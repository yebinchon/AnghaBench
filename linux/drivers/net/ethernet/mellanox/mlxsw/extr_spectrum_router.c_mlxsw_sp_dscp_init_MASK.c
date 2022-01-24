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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MLXSW_REG_RDPM_DSCP_ENTRY_REC_MAX_COUNT ; 
 int MLXSW_REG_RDPM_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rdpm ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp)
{
	char rdpm_pl[MLXSW_REG_RDPM_LEN];
	unsigned int i;

	FUNC1(rdpm, rdpm_pl);

	/* HW is determining switch priority based on DSCP-bits, but the
	 * kernel is still doing that based on the ToS. Since there's a
	 * mismatch in bits we need to make sure to translate the right
	 * value ToS would observe, skipping the 2 least-significant ECN bits.
	 */
	for (i = 0; i < MLXSW_REG_RDPM_DSCP_ENTRY_REC_MAX_COUNT; i++)
		FUNC2(rdpm_pl, i, FUNC4(i << 2));

	return FUNC3(mlxsw_sp->core, FUNC0(rdpm), rdpm_pl);
}