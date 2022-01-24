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
 int /*<<< orphan*/  PCI_CLOCK_CTL ; 
 int /*<<< orphan*/  PCI_PMOS0_CONTROL ; 
 int /*<<< orphan*/  PCI_PMOS1_CONTROL ; 
 unsigned char PMOS0_ACTIVE_BITS ; 
 unsigned char PMOS1_ACTIVE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, int flag)
{
	unsigned char val;

	FUNC1(pdev, PCI_PMOS0_CONTROL, &val);
	if (flag)
		val |= PMOS0_ACTIVE_BITS;
	else
		val &= ~PMOS0_ACTIVE_BITS;
	FUNC3(pdev, PCI_PMOS0_CONTROL, val);
	FUNC0(&pdev->dev, "JMB38x: set PMOS0 val 0x%x\n", val);

	if (FUNC2(pdev, 1)) {
		FUNC1(pdev, PCI_PMOS1_CONTROL, &val);
		if (flag)
			val |= PMOS1_ACTIVE_BITS;
		else
			val &= ~PMOS1_ACTIVE_BITS;
		FUNC3(pdev, PCI_PMOS1_CONTROL, val);
		FUNC0(&pdev->dev, "JMB38x: set PMOS1 val 0x%x\n", val);
	}

	FUNC1(pdev, PCI_CLOCK_CTL, &val);
	FUNC3(pdev, PCI_CLOCK_CTL, val & ~0x0f);
	FUNC3(pdev, PCI_CLOCK_CTL, val | 0x01);
	FUNC0(&pdev->dev, "Clock Control by PCI config is disabled!\n");

        return 0;
}