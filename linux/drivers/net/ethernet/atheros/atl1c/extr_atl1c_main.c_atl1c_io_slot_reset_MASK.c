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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct atl1c_adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct atl1c_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct atl1c_adapter *adapter = FUNC2(netdev);

	if (FUNC4(pdev)) {
		if (FUNC3(adapter))
			FUNC1(&pdev->dev,
				"Cannot re-enable PCI device after reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	FUNC7(pdev);

	FUNC5(pdev, PCI_D3hot, 0);
	FUNC5(pdev, PCI_D3cold, 0);

	FUNC0(&adapter->hw);

	return PCI_ERS_RESULT_RECOVERED;
}