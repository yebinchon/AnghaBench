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
struct cvm_mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  cvm_mmc_interrupt ; 
 int /*<<< orphan*/ * cvm_mmc_irq_names ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cvm_mmc_host*) ; 
 int FUNC1 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct cvm_mmc_host *host,
					   struct pci_dev *pdev)
{
	int nvec, ret, i;

	nvec = FUNC1(pdev, 1, 9, PCI_IRQ_MSIX);
	if (nvec < 0)
		return nvec;

	/* register interrupts */
	for (i = 0; i < nvec; i++) {
		ret = FUNC0(&pdev->dev, FUNC2(pdev, i),
				       cvm_mmc_interrupt,
				       0, cvm_mmc_irq_names[i], host);
		if (ret)
			return ret;
	}
	return 0;
}