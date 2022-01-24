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
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct net_device {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct ixgb_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgb_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgb_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 struct net_device* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static pci_ers_result_t FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC11(pdev);
	struct ixgb_adapter *adapter = FUNC6(netdev);

	if (FUNC10(pdev)) {
		FUNC8(adapter, probe, adapter->netdev,
			  "Cannot re-enable PCI device after reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	/* Perform card reset only on one instance of the card */
	if (0 != FUNC0 (pdev->devfn))
		return PCI_ERS_RESULT_RECOVERED;

	FUNC12(pdev);

	FUNC7(netdev);
	FUNC9(netdev);
	FUNC3(adapter);

	/* Make sure the EEPROM is good */
	if (!FUNC4(&adapter->hw)) {
		FUNC8(adapter, probe, adapter->netdev,
			  "After reset, the EEPROM checksum is not valid\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	FUNC2(&adapter->hw, netdev->dev_addr);
	FUNC5(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);

	if (!FUNC1(netdev->perm_addr)) {
		FUNC8(adapter, probe, adapter->netdev,
			  "After reset, invalid MAC address\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	return PCI_ERS_RESULT_RECOVERED;
}