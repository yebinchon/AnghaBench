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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_deassert_reset ; 
 int /*<<< orphan*/  pcie_warm_reset ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pci_dev)
{
	int rc;

	/*
	 * lock pci config space access from userspace,
	 * save state and issue PCIe fundamental reset
	 */
	FUNC1(pci_dev);
	FUNC4(pci_dev);
	rc = FUNC5(pci_dev, pcie_warm_reset);
	if (!rc) {
		/* keep PCIe reset asserted for 250ms */
		FUNC0(250);
		FUNC5(pci_dev, pcie_deassert_reset);
		/* Wait for 2s to reload flash and train the link */
		FUNC0(2000);
	}
	FUNC3(pci_dev);
	FUNC2(pci_dev);
	return rc;
}