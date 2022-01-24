#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {int num_vfs; int /*<<< orphan*/  pdev; TYPE_1__* vfinfo; struct ixgbe_hw hw; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  flags2; int /*<<< orphan*/  state; scalar_t__* xdp_ring; struct net_device* netdev; } ;
struct TYPE_4__ {int clear_to_send; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EITRSEL ; 
 int /*<<< orphan*/  IXGBE_FLAG2_FDIR_REQUIRES_REINIT ; 
 int /*<<< orphan*/  IXGBE_FLAG_NEED_LINK_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC19(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	int i;

	/* signal that we are down to the interrupt handler */
	if (FUNC18(__IXGBE_DOWN, &adapter->state))
		return; /* do nothing if already down */

	/* Shut off incoming Tx traffic */
	FUNC14(netdev);

	/* call carrier off first to avoid false dev_watchdog timeouts */
	FUNC12(netdev);
	FUNC13(netdev);

	/* Disable Rx */
	FUNC5(adapter);

	/* synchronize_rcu() needed for pending XDP buffers to drain */
	if (adapter->xdp_ring[0])
		FUNC17();

	FUNC8(adapter);

	FUNC9(adapter);

	FUNC1(__IXGBE_RESET_REQUESTED, &adapter->state);
	adapter->flags2 &= ~IXGBE_FLAG2_FDIR_REQUIRES_REINIT;
	adapter->flags &= ~IXGBE_FLAG_NEED_LINK_UPDATE;

	FUNC2(&adapter->service_timer);

	if (adapter->num_vfs) {
		/* Clear EITR Select mapping */
		FUNC0(&adapter->hw, IXGBE_EITRSEL, 0);

		/* Mark all the VFs as inactive */
		for (i = 0 ; i < adapter->num_vfs; i++)
			adapter->vfinfo[i].clear_to_send = false;

		/* ping all the active vfs to let them know we are going down */
		FUNC10(adapter);

		/* Disable all VFTE/VFRE TX/RX */
		FUNC7(adapter);
	}

	/* disable transmits in the hardware now that interrupts are off */
	FUNC6(adapter);

	if (!FUNC15(adapter->pdev))
		FUNC11(adapter);

	/* power down the optics for 82599 SFP+ fiber */
	if (hw->mac.ops.disable_tx_laser)
		hw->mac.ops.disable_tx_laser(hw);

	FUNC4(adapter);
	FUNC3(adapter);
}