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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DSN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u8 *serial)
{
	struct pci_dev *pdev = FUNC5(dev);
	int pos;
	u32 reg;

	pos = FUNC1(pdev, PCI_EXT_CAP_ID_DSN);
	if (!pos) {
		FUNC0(dev, "can't find PCIe Serial Number Capability\n");
		return -EINVAL;
	}

	FUNC2(pdev, pos + 4, &reg);
	FUNC3(reg >> 16, serial + 4);
	FUNC2(pdev, pos + 8, &reg);
	FUNC4(reg, serial);

	return 0;
}