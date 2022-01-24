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
struct cnic_eth_dev {int starting_cid; int /*<<< orphan*/  drv_state; int /*<<< orphan*/  iscsi_l2_cid; int /*<<< orphan*/  fcoe_init_cid; scalar_t__ ctx_tbl_offset; } ;
struct bnx2x {struct cnic_eth_dev cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_NO_ISCSI_OOO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int ILT_PAGE_CIDS ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 int FUNC7 (struct bnx2x*) ; 

void FUNC8(struct bnx2x *bp)
{
	struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

	cp->ctx_tbl_offset = FUNC5(FUNC3(bp)) +
			     FUNC7(bp);
	cp->starting_cid = FUNC7(bp) * ILT_PAGE_CIDS;
	cp->fcoe_init_cid = FUNC1(bp);
	cp->iscsi_l2_cid = FUNC2(bp);

	FUNC4(NETIF_MSG_IFUP, "BNX2X_1st_NON_L2_ETH_CID(bp) %x, cp->starting_cid %x, cp->fcoe_init_cid %x, cp->iscsi_l2_cid %x\n",
	   FUNC0(bp), cp->starting_cid, cp->fcoe_init_cid,
	   cp->iscsi_l2_cid);

	if (FUNC6(bp))
		cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI_OOO;
}