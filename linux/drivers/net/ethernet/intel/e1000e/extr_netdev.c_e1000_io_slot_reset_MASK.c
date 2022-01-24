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
typedef  int u16 ;
struct pci_dev {int state_saved; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags2; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int FLAG2_DISABLE_ASPM_L0S ; 
 int FLAG2_DISABLE_ASPM_L1 ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  WUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC10(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct e1000_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u16 aspm_disable_flag = 0;
	int err;
	pci_ers_result_t result;

	if (adapter->flags2 & FLAG2_DISABLE_ASPM_L0S)
		aspm_disable_flag = PCIE_LINK_STATE_L0S;
	if (adapter->flags2 & FLAG2_DISABLE_ASPM_L1)
		aspm_disable_flag |= PCIE_LINK_STATE_L1;
	if (aspm_disable_flag)
		FUNC1(pdev, aspm_disable_flag);

	err = FUNC5(pdev);
	if (err) {
		FUNC0(&pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		pdev->state_saved = true;
		FUNC8(pdev);
		FUNC9(pdev);

		FUNC6(pdev, PCI_D3hot, 0);
		FUNC6(pdev, PCI_D3cold, 0);

		FUNC2(adapter);
		FUNC3(WUS, ~0);
		result = PCI_ERS_RESULT_RECOVERED;
	}

	return result;
}