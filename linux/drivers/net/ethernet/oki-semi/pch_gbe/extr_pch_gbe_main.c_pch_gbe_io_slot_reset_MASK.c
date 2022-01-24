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
struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct pch_gbe_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct pch_gbe_adapter *adapter = FUNC1(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;

	if (FUNC5(pdev)) {
		FUNC0(netdev, "Cannot re-enable PCI device after reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	FUNC8(pdev);
	FUNC6(pdev, PCI_D0, 0);
	FUNC3(hw);
	FUNC4(adapter);
	/* Clear wake up status */
	FUNC2(hw, 0);

	return PCI_ERS_RESULT_RECOVERED;
}