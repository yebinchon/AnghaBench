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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int num_xdp_queues; int /*<<< orphan*/  pdev; TYPE_2__** xdp_ring; TYPE_1__** tx_ring; int /*<<< orphan*/  service_timer; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  state; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_TXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

void FUNC15(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	int i;

	/* signal that we are down to the interrupt handler */
	if (FUNC13(__IXGBEVF_DOWN, &adapter->state))
		return; /* do nothing if already down */

	/* disable all enabled Rx queues */
	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC5(adapter, adapter->rx_ring[i]);

	FUNC14(10000, 20000);

	FUNC11(netdev);

	/* call carrier off first to avoid false dev_watchdog timeouts */
	FUNC9(netdev);
	FUNC10(netdev);

	FUNC6(adapter);

	FUNC7(adapter);

	FUNC2(&adapter->service_timer);

	/* disable transmits in the hardware now that interrupts are off */
	for (i = 0; i < adapter->num_tx_queues; i++) {
		u8 reg_idx = adapter->tx_ring[i]->reg_idx;

		FUNC1(hw, FUNC0(reg_idx),
				IXGBE_TXDCTL_SWFLSH);
	}

	for (i = 0; i < adapter->num_xdp_queues; i++) {
		u8 reg_idx = adapter->xdp_ring[i]->reg_idx;

		FUNC1(hw, FUNC0(reg_idx),
				IXGBE_TXDCTL_SWFLSH);
	}

	if (!FUNC12(adapter->pdev))
		FUNC8(adapter);

	FUNC4(adapter);
	FUNC3(adapter);
}