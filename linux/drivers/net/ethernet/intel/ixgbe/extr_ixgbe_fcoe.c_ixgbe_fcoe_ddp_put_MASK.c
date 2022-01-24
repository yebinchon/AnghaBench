#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct net_device {size_t fcoe_ddp_xid; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_fcoe_ddp {int len; int /*<<< orphan*/ * pool; int /*<<< orphan*/  udp; int /*<<< orphan*/  udl; int /*<<< orphan*/  sgc; scalar_t__ sgl; int /*<<< orphan*/  err; } ;
struct ixgbe_fcoe {int /*<<< orphan*/  lock; struct ixgbe_fcoe_ddp* ddp; } ;
struct ixgbe_adapter {TYPE_2__* pdev; struct ixgbe_hw hw; struct ixgbe_fcoe fcoe; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IXGBE_FCBUFF ; 
 int IXGBE_FCBUFF_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  IXGBE_FCDMARW ; 
 size_t IXGBE_FCDMARW_RE ; 
 size_t IXGBE_FCDMARW_WE ; 
 int /*<<< orphan*/  IXGBE_FCFLT ; 
 int /*<<< orphan*/  IXGBE_FCFLTRW ; 
 size_t IXGBE_FCFLTRW_WE ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_fcoe_ddp*) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 struct ixgbe_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

int FUNC11(struct net_device *netdev, u16 xid)
{
	int len;
	struct ixgbe_fcoe *fcoe;
	struct ixgbe_adapter *adapter;
	struct ixgbe_fcoe_ddp *ddp;
	struct ixgbe_hw *hw;
	u32 fcbuff;

	if (!netdev)
		return 0;

	if (xid >= netdev->fcoe_ddp_xid)
		return 0;

	adapter = FUNC7(netdev);
	fcoe = &adapter->fcoe;
	ddp = &fcoe->ddp[xid];
	if (!ddp->udl)
		return 0;

	hw = &adapter->hw;
	len = ddp->len;
	/* if no error then skip ddp context invalidation */
	if (!ddp->err)
		goto skip_ddpinv;

	if (hw->mac.type == ixgbe_mac_X550) {
		/* X550 does not require DDP FCoE lock */

		FUNC3(hw, FUNC1(0, xid), 0);
		FUNC3(hw, FUNC1(3, xid),
				(xid | IXGBE_FCFLTRW_WE));

		/* program FCBUFF */
		FUNC3(hw, FUNC0(2, xid), 0);

		/* program FCDMARW */
		FUNC3(hw, FUNC0(3, xid),
				(xid | IXGBE_FCDMARW_WE));

		/* read FCBUFF to check context invalidated */
		FUNC3(hw, FUNC0(3, xid),
				(xid | IXGBE_FCDMARW_RE));
		fcbuff = FUNC2(hw, FUNC0(2, xid));
	} else {
		/* other hardware requires DDP FCoE lock */
		FUNC8(&fcoe->lock);
		FUNC3(hw, IXGBE_FCFLT, 0);
		FUNC3(hw, IXGBE_FCFLTRW,
				(xid | IXGBE_FCFLTRW_WE));
		FUNC3(hw, IXGBE_FCBUFF, 0);
		FUNC3(hw, IXGBE_FCDMARW,
				(xid | IXGBE_FCDMARW_WE));

		/* guaranteed to be invalidated after 100us */
		FUNC3(hw, IXGBE_FCDMARW,
				(xid | IXGBE_FCDMARW_RE));
		fcbuff = FUNC2(hw, IXGBE_FCBUFF);
		FUNC9(&fcoe->lock);
		}

	if (fcbuff & IXGBE_FCBUFF_VALID)
		FUNC10(100, 150);

skip_ddpinv:
	if (ddp->sgl)
		FUNC5(&adapter->pdev->dev, ddp->sgl, ddp->sgc,
			     DMA_FROM_DEVICE);
	if (ddp->pool) {
		FUNC4(ddp->pool, ddp->udl, ddp->udp);
		ddp->pool = NULL;
	}

	FUNC6(ddp);

	return len;
}