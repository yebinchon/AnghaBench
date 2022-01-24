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
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; int /*<<< orphan*/  io_addr; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_WUS ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  __IXGBE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct ixgbe_adapter* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static pci_ers_result_t FUNC11(struct pci_dev *pdev)
{
	struct ixgbe_adapter *adapter = FUNC5(pdev);
	pci_ers_result_t result;

	if (FUNC4(pdev)) {
		FUNC2(probe, "Cannot re-enable PCI device after reset.\n");
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC10();
		FUNC1(__IXGBE_DISABLED, &adapter->state);
		adapter->hw.hw_addr = adapter->io_addr;
		FUNC8(pdev);
		FUNC6(pdev);
		FUNC7(pdev);

		FUNC9(pdev, false);

		FUNC3(adapter);
		FUNC0(&adapter->hw, IXGBE_WUS, ~0);
		result = PCI_ERS_RESULT_RECOVERED;
	}

	return result;
}