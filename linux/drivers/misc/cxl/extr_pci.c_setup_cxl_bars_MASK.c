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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_4 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	/* Safety check in case we get backported to < 3.17 without M64 */
	if ((FUNC1(dev) < 0x100000000ULL) ||
	    (FUNC2(dev) < 0x100000000ULL)) {
		FUNC0(&dev->dev, "ABORTING: M32 BAR assignment incompatible with CXL\n");
		return -ENODEV;
	}

	/*
	 * BAR 4/5 has a special meaning for CXL and must be programmed with a
	 * special value corresponding to the CXL protocol address range.
	 * For POWER 8/9 that means bits 48:49 must be set to 10
	 */
	FUNC3(dev, PCI_BASE_ADDRESS_4, 0x00000000);
	FUNC3(dev, PCI_BASE_ADDRESS_5, 0x00020000);

	return 0;
}