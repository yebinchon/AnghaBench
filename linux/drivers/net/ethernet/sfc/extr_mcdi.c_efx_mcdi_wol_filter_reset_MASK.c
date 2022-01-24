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
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_CMD_WOL_FILTER_RESET ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct efx_nic *efx)
{
	int rc;

	rc = FUNC0(efx, MC_CMD_WOL_FILTER_RESET, NULL, 0, NULL, 0, NULL);
	return rc;
}