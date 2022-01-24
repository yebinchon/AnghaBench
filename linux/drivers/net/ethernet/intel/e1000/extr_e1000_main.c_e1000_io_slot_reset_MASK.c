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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  flags; scalar_t__ need_ioport; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  WUS ; 
 int /*<<< orphan*/  __E1000_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static pci_ers_result_t FUNC11(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct e1000_adapter *adapter = FUNC3(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int err;

	if (adapter->need_ioport)
		err = FUNC4(pdev);
	else
		err = FUNC5(pdev);
	if (err) {
		FUNC9("Cannot re-enable PCI device after reset.\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	/* flush memory to make sure state is correct */
	FUNC10();
	FUNC0(__E1000_DISABLED, &adapter->flags);
	FUNC8(pdev);

	FUNC6(pdev, PCI_D3hot, 0);
	FUNC6(pdev, PCI_D3cold, 0);

	FUNC1(adapter);
	FUNC2(WUS, ~0);

	return PCI_ERS_RESULT_RECOVERED;
}