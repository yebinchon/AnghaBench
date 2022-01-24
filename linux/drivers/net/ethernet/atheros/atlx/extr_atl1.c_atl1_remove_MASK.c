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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; int /*<<< orphan*/  perm_mac_addr; int /*<<< orphan*/  mac_addr; } ;
struct atl1_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ REG_PHY_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atl1_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct atl1_adapter *adapter;
	/* Device not available. Return. */
	if (!netdev)
		return;

	adapter = FUNC5(netdev);

	/*
	 * Some atl1 boards lack persistent storage for their MAC, and get it
	 * from the BIOS during POST.  If we've been messing with the MAC
	 * address, we need to save the permanent one.
	 */
	if (!FUNC1(adapter->hw.mac_addr,
					adapter->hw.perm_mac_addr)) {
		FUNC4(adapter->hw.mac_addr, adapter->hw.perm_mac_addr,
			ETH_ALEN);
		FUNC0(&adapter->hw);
	}

	FUNC3(0, adapter->hw.hw_addr + REG_PHY_ENABLE);
	FUNC10(netdev);
	FUNC8(pdev, adapter->hw.hw_addr);
	FUNC9(pdev);
	FUNC2(netdev);
	FUNC6(pdev);
}