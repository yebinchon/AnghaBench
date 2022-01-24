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
struct sdhci_pci_chip {int /*<<< orphan*/  pdev; } ;
struct sdhci_host {int /*<<< orphan*/  irq; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int PCI_IRQ_MSI ; 
 int PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sdhci_pci_chip *chip,
				    struct sdhci_host *host)
{
	int ret;

	ret = FUNC2(chip->pdev, PCI_CAP_ID_MSI);
	if (!ret) {
		FUNC5("%s: unsupport msi, use INTx irq\n",
			FUNC0(host->mmc));
		return;
	}

	ret = FUNC1(chip->pdev, 1, 1,
				    PCI_IRQ_MSI | PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC4("%s: enable PCI MSI failed, err=%d\n",
		       FUNC0(host->mmc), ret);
		return;
	}

	host->irq = FUNC3(chip->pdev, 0);
}