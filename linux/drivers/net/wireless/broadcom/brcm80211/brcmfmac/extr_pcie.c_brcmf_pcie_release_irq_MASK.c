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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct brcmf_pciedev_info {int irq_allocated; scalar_t__ in_irq; struct pci_dev* pdev; } ;
struct brcmf_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_MAILBOXINT ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_bus*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*) ; 
 int FUNC2 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int) ; 
 struct brcmf_bus* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct brcmf_pciedev_info *devinfo)
{
	struct pci_dev *pdev = devinfo->pdev;
	struct brcmf_bus *bus = FUNC4(&pdev->dev);
	u32 status;
	u32 count;

	if (!devinfo->irq_allocated)
		return;

	FUNC1(devinfo);
	FUNC5(pdev->irq, devinfo);
	FUNC7(pdev);

	FUNC6(50);
	count = 0;
	while ((devinfo->in_irq) && (count < 20)) {
		FUNC6(50);
		count++;
	}
	if (devinfo->in_irq)
		FUNC0(bus, "Still in IRQ (processing) !!!\n");

	status = FUNC2(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
	FUNC3(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT, status);

	devinfo->irq_allocated = false;
}