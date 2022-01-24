#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_ring {int reg_idx; int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IXGBE_RXDCTL_VME ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL_VME ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_x 129 
#define  ixgbe_mac_x550em_a 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 vlnctrl;
	int i, j;

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		vlnctrl = FUNC0(hw, IXGBE_VLNCTRL);
		vlnctrl &= ~IXGBE_VLNCTRL_VME;
		FUNC2(hw, IXGBE_VLNCTRL, vlnctrl);
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_x550em_a:
		for (i = 0; i < adapter->num_rx_queues; i++) {
			struct ixgbe_ring *ring = adapter->rx_ring[i];

			if (!FUNC3(ring->netdev))
				continue;

			j = ring->reg_idx;
			vlnctrl = FUNC0(hw, FUNC1(j));
			vlnctrl &= ~IXGBE_RXDCTL_VME;
			FUNC2(hw, FUNC1(j), vlnctrl);
		}
		break;
	default:
		break;
	}
}