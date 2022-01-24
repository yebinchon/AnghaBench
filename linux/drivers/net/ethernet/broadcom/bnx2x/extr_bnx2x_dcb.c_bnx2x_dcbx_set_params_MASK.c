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
typedef  int u32 ;
struct bnx2x {int /*<<< orphan*/  dev; int /*<<< orphan*/  dcbx_error; int /*<<< orphan*/  dcbx_local_feat; } ;

/* Variables and functions */
#define  BNX2X_DCBX_STATE_NEG_RECEIVED 130 
#define  BNX2X_DCBX_STATE_TX_PAUSED 129 
#define  BNX2X_DCBX_STATE_TX_RELEASED 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_DCB ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_TX_STOP ; 
 int /*<<< orphan*/  DCB_CMD_CEE_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int DRV_FLAGS_DCB_CONFIGURED ; 
 int /*<<< orphan*/  DRV_MSG_CODE_DCBX_PMF_DRV_OK ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC17(struct bnx2x *bp, u32 state)
{
	switch (state) {
	case BNX2X_DCBX_STATE_NEG_RECEIVED:
		{
			FUNC1(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_NEG_RECEIVED\n");
#ifdef BCM_DCBNL
			/**
			 * Delete app tlvs from dcbnl before reading new
			 * negotiation results
			 */
			bnx2x_dcbnl_update_applist(bp, true);

			/* Read remote mib if dcbx is in the FW */
			if (bnx2x_dcbx_read_shmem_remote_mib(bp))
				return;
#endif
			/* Read neg results if dcbx is in the FW */
			if (FUNC4(bp))
				return;

			FUNC8(bp, &bp->dcbx_local_feat,
						  bp->dcbx_error);

			FUNC10(bp, &bp->dcbx_local_feat,
						 bp->dcbx_error);

			/* mark DCBX result for PMF migration */
			FUNC15(bp,
					       1 << DRV_FLAGS_DCB_CONFIGURED,
					       1);
#ifdef BCM_DCBNL
			/*
			 * Add new app tlvs to dcbnl
			 */
			bnx2x_dcbnl_update_applist(bp, false);
#endif
			/*
			 * reconfigure the netdevice with the results of the new
			 * dcbx negotiation.
			 */
			FUNC7(bp);

			/*
			 * allow other functions to update their netdevices
			 * accordingly
			 */
			if (FUNC2(bp))
				FUNC11(bp);

			FUNC13(bp, BNX2X_SP_RTNL_TX_STOP, 0);
			return;
		}
	case BNX2X_DCBX_STATE_TX_PAUSED:
		FUNC1(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_TX_PAUSED\n");
		FUNC12(bp);

		FUNC6(bp);

		/* ets may affect cmng configuration: reinit it in hw */
		FUNC14(bp);
		return;
	case BNX2X_DCBX_STATE_TX_RELEASED:
		FUNC1(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_TX_RELEASED\n");
		FUNC9(bp, DRV_MSG_CODE_DCBX_PMF_DRV_OK, 0);
#ifdef BCM_DCBNL
		/*
		 * Send a notification for the new negotiated parameters
		 */
		dcbnl_cee_notify(bp->dev, RTM_GETDCB, DCB_CMD_CEE_GET, 0, 0);
#endif
		return;
	default:
		FUNC0("Unknown DCBX_STATE\n");
	}
}