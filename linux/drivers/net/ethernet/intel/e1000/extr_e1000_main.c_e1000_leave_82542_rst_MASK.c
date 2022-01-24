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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct e1000_rx_ring {int dummy; } ;
struct e1000_hw {int pci_cmd_word; } ;
struct e1000_adapter {int /*<<< orphan*/  (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int /*<<< orphan*/ ) ;struct e1000_rx_ring* rx_ring; struct net_device* netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_rx_ring*) ; 
 int /*<<< orphan*/  E1000_RCTL_RST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PCI_COMMAND_INVALIDATE ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*,struct e1000_rx_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	u32 rctl;

	rctl = FUNC4(RCTL);
	rctl &= ~E1000_RCTL_RST;
	FUNC5(RCTL, rctl);
	FUNC1();
	FUNC6(5);

	if (hw->pci_cmd_word & PCI_COMMAND_INVALIDATE)
		FUNC3(hw);

	if (FUNC7(netdev)) {
		/* No need to loop, because 82542 supports only 1 queue */
		struct e1000_rx_ring *ring = &adapter->rx_ring[0];
		FUNC2(adapter);
		adapter->alloc_rx_buf(adapter, ring, FUNC0(ring));
	}
}