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
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct brcmf_pciedev_info {int irq_allocated; struct pci_dev* pdev; } ;
struct brcmf_bus {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_bus*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  brcmf_pcie_isr_thread ; 
 int /*<<< orphan*/  brcmf_pcie_quick_check_isr ; 
 struct brcmf_bus* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct brcmf_pciedev_info*) ; 

__attribute__((used)) static int FUNC7(struct brcmf_pciedev_info *devinfo)
{
	struct pci_dev *pdev = devinfo->pdev;
	struct brcmf_bus *bus = FUNC3(&pdev->dev);

	FUNC2(devinfo);

	FUNC0(PCIE, "Enter\n");

	FUNC5(pdev);
	if (FUNC6(pdev->irq, brcmf_pcie_quick_check_isr,
				 brcmf_pcie_isr_thread, IRQF_SHARED,
				 "brcmf_pcie_intr", devinfo)) {
		FUNC4(pdev);
		FUNC1(bus, "Failed to request IRQ %d\n", pdev->irq);
		return -EIO;
	}
	devinfo->irq_allocated = true;
	return 0;
}