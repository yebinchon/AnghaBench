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
struct bnx2x {int /*<<< orphan*/  dev; int /*<<< orphan*/  dcbx_error; int /*<<< orphan*/  dcbx_local_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_CMD_CEE_GET ; 
 int DRV_FLAGS_DCB_CONFIGURED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 scalar_t__ FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv_flags ; 

void FUNC9(struct bnx2x *bp)
{
	/* if we need to synchronize DCBX result from prev PMF
	 * read it from shmem and update bp and netdev accordingly
	 */
	if (FUNC1(bp, drv_flags) &&
	   FUNC0(FUNC2(bp, drv_flags), 1 << DRV_FLAGS_DCB_CONFIGURED)) {
		/* Read neg results if dcbx is in the FW */
		if (FUNC4(bp))
			return;

		FUNC6(bp, &bp->dcbx_local_feat,
					  bp->dcbx_error);
		FUNC7(bp, &bp->dcbx_local_feat,
					 bp->dcbx_error);
#ifdef BCM_DCBNL
		/*
		 * Add new app tlvs to dcbnl
		 */
		bnx2x_dcbnl_update_applist(bp, false);
		/*
		 * Send a notification for the new negotiated parameters
		 */
		dcbnl_cee_notify(bp->dev, RTM_GETDCB, DCB_CMD_CEE_GET, 0, 0);
#endif
		/*
		 * reconfigure the netdevice with the results of the new
		 * dcbx negotiation.
		 */
		FUNC5(bp);
	}
}