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
struct nic {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct nic*) ; 
 struct nic* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static pci_ers_result_t FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct nic *nic = FUNC3(netdev);

	if (FUNC4(pdev)) {
		FUNC7("Cannot re-enable PCI device after reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	FUNC6(pdev);

	/* Only one device per card can do a reset */
	if (0 != FUNC0(pdev->devfn))
		return PCI_ERS_RESULT_RECOVERED;
	FUNC1(nic);
	FUNC2(nic);

	return PCI_ERS_RESULT_RECOVERED;
}