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
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_DEVICE_ID_SGI_IOC3 ; 
 scalar_t__ PCI_VENDOR_ID_SGI ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, int slot)
{
	struct pci_dev *dev = FUNC2(pdev->bus, FUNC0(slot, 0));
	int ret = 0;

	if (dev) {
		if (dev->vendor == PCI_VENDOR_ID_SGI &&
		    dev->device == PCI_DEVICE_ID_SGI_IOC3)
			ret = 1;
		FUNC1(dev);
	}

	return ret;
}