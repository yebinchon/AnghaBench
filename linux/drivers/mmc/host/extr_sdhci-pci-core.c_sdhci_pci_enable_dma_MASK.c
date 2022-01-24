#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pci_slot {TYPE_1__* chip; } ;
struct sdhci_host {int flags; } ;
struct pci_dev {int class; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int PCI_CLASS_SYSTEM_SDHCI ; 
 int PCI_SDHCI_IFDMA ; 
 int SDHCI_USE_SDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct sdhci_pci_slot* FUNC2 (struct sdhci_host*) ; 

int FUNC3(struct sdhci_host *host)
{
	struct sdhci_pci_slot *slot;
	struct pci_dev *pdev;

	slot = FUNC2(host);
	pdev = slot->chip->pdev;

	if (((pdev->class & 0xFFFF00) == (PCI_CLASS_SYSTEM_SDHCI << 8)) &&
		((pdev->class & 0x0000FF) != PCI_SDHCI_IFDMA) &&
		(host->flags & SDHCI_USE_SDMA)) {
		FUNC0(&pdev->dev, "Will use DMA mode even though HW "
			"doesn't fully claim to support it.\n");
	}

	FUNC1(pdev);

	return 0;
}