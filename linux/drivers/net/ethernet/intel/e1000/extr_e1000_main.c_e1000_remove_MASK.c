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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ mac_type; scalar_t__ flash_address; scalar_t__ hw_addr; scalar_t__ ce4100_gbe_mdio_base_virt; } ;
struct e1000_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  bars; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  __E1000_DISABLED ; 
 scalar_t__ e1000_ce4100 ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC8(pdev);
	struct e1000_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;
	bool disable_dev;

	FUNC0(adapter);
	FUNC2(adapter);

	FUNC11(netdev);

	FUNC1(hw);

	FUNC5(adapter->tx_ring);
	FUNC5(adapter->rx_ring);

	if (hw->mac_type == e1000_ce4100)
		FUNC4(hw->ce4100_gbe_mdio_base_virt);
	FUNC4(hw->hw_addr);
	if (hw->flash_address)
		FUNC4(hw->flash_address);
	FUNC9(pdev, adapter->bars);

	disable_dev = !FUNC10(__E1000_DISABLED, &adapter->flags);
	FUNC3(netdev);

	if (disable_dev)
		FUNC7(pdev);
}