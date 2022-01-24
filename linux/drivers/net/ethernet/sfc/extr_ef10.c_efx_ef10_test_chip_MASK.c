#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct efx_self_tests {int memory; int registers; } ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  MC_CMD_ENABLE_OFFLINE_BIST ; 
 int /*<<< orphan*/  MC_CMD_MC_MEM_BIST ; 
 int /*<<< orphan*/  MC_CMD_REG_BIST ; 
 int /*<<< orphan*/  RESET_TYPE_WORLD ; 
 scalar_t__ FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct efx_nic *efx, struct efx_self_tests *tests)
{
	int rc, rc2;

	FUNC3(efx, RESET_TYPE_WORLD);

	rc = FUNC2(efx, MC_CMD_ENABLE_OFFLINE_BIST,
			  NULL, 0, NULL, 0, NULL);
	if (rc != 0)
		goto out;

	tests->memory = FUNC0(efx, MC_CMD_MC_MEM_BIST) ? -1 : 1;
	tests->registers = FUNC0(efx, MC_CMD_REG_BIST) ? -1 : 1;

	rc = FUNC1(efx, RESET_TYPE_WORLD);

out:
	if (rc == -EPERM)
		rc = 0;
	rc2 = FUNC4(efx, RESET_TYPE_WORLD, rc == 0);
	return rc ? rc : rc2;
}