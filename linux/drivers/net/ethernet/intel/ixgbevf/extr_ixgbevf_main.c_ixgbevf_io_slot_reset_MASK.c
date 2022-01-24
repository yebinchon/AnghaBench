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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  io_addr; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  __IXGBEVF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static pci_ers_result_t FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct ixgbevf_adapter *adapter = FUNC3(netdev);

	if (FUNC4(pdev)) {
		FUNC1(&pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	adapter->hw.hw_addr = adapter->io_addr;
	FUNC7();
	FUNC0(__IXGBEVF_DISABLED, &adapter->state);
	FUNC6(pdev);

	FUNC2(adapter);

	return PCI_ERS_RESULT_RECOVERED;
}