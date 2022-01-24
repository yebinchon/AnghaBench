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
struct hinic_hwif {void* cfg_regs_bar; void* intr_regs_base; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_PCI_CFG_REGS_BAR ; 
 int /*<<< orphan*/  HINIC_PCI_INTR_REGS_BAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*) ; 
 int FUNC3 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_hwif*) ; 

int FUNC8(struct hinic_hwif *hwif, struct pci_dev *pdev)
{
	int err;

	hwif->pdev = pdev;

	hwif->cfg_regs_bar = FUNC5(pdev, HINIC_PCI_CFG_REGS_BAR);
	if (!hwif->cfg_regs_bar) {
		FUNC1(&pdev->dev, "Failed to map configuration regs\n");
		return -ENOMEM;
	}

	hwif->intr_regs_base = FUNC5(pdev, HINIC_PCI_INTR_REGS_BAR);
	if (!hwif->intr_regs_base) {
		FUNC1(&pdev->dev, "Failed to map configuration regs\n");
		err = -ENOMEM;
		goto err_map_intr_bar;
	}

	err = FUNC3(hwif);
	if (err) {
		FUNC1(&pdev->dev, "HW interface is not ready\n");
		goto err_hwif_ready;
	}

	FUNC6(hwif);

	if (FUNC0(hwif))
		FUNC7(hwif);

	/* No transactionss before DMA is initialized */
	FUNC2(hwif);
	return 0;

err_hwif_ready:
	FUNC4(hwif->intr_regs_base);

err_map_intr_bar:
	FUNC4(hwif->cfg_regs_bar);

	return err;
}