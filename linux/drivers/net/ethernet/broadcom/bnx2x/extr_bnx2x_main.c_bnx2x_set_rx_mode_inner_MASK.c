#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {TYPE_1__* dev; int /*<<< orphan*/  sp_state; int /*<<< orphan*/  rx_mode; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_SCHED ; 
 scalar_t__ BNX2X_MAX_MULTICAST ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_ALLMULTI ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_NONE ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_NORMAL ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_PROMISC ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_VFPF_MCAST ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct bnx2x *bp)
{
	u32 rx_mode = BNX2X_RX_MODE_NORMAL;

	FUNC1(NETIF_MSG_IFUP, "dev->flags = %x\n", bp->dev->flags);

	FUNC10(bp->dev);

	if (bp->dev->flags & IFF_PROMISC) {
		rx_mode = BNX2X_RX_MODE_PROMISC;
	} else if ((bp->dev->flags & IFF_ALLMULTI) ||
		   ((FUNC9(bp->dev) > BNX2X_MAX_MULTICAST) &&
		    FUNC0(bp))) {
		rx_mode = BNX2X_RX_MODE_ALLMULTI;
	} else {
		if (FUNC3(bp)) {
			/* some multicasts */
			if (FUNC5(bp) < 0)
				rx_mode = BNX2X_RX_MODE_ALLMULTI;

			/* release bh lock, as bnx2x_set_uc_list might sleep */
			FUNC11(bp->dev);
			if (FUNC7(bp) < 0)
				rx_mode = BNX2X_RX_MODE_PROMISC;
			FUNC10(bp->dev);
		} else {
			/* configuring mcast to a vf involves sleeping (when we
			 * wait for the pf's response).
			 */
			FUNC4(bp,
					       BNX2X_SP_RTNL_VFPF_MCAST, 0);
		}
	}

	bp->rx_mode = rx_mode;
	/* handle ISCSI SD mode */
	if (FUNC2(bp))
		bp->rx_mode = BNX2X_RX_MODE_NONE;

	/* Schedule the rx_mode command */
	if (FUNC13(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state)) {
		FUNC12(BNX2X_FILTER_RX_MODE_SCHED, &bp->sp_state);
		FUNC11(bp->dev);
		return;
	}

	if (FUNC3(bp)) {
		FUNC6(bp);
		FUNC11(bp->dev);
	} else {
		/* VF will need to request the PF to make this change, and so
		 * the VF needs to release the bottom-half lock prior to the
		 * request (as it will likely require sleep on the VF side)
		 */
		FUNC11(bp->dev);
		FUNC8(bp);
	}
}