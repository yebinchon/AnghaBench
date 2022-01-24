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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct dw_mci {int /*<<< orphan*/  regs; int /*<<< orphan*/ * pdata; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int PCI_BAR_NO ; 
 struct dw_mci* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dw_mci*) ; 
 int /*<<< orphan*/  pci_board_data ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct dw_mci*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
			    const struct pci_device_id *entries)
{
	struct dw_mci *host;
	int ret;

	ret = FUNC5(pdev);
	if (ret)
		return ret;

	host = FUNC0(&pdev->dev, sizeof(struct dw_mci), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	host->irq = pdev->irq;
	host->irq_flags = IRQF_SHARED;
	host->dev = &pdev->dev;
	host->pdata = &pci_board_data;

	ret = FUNC6(pdev, 1 << PCI_BAR_NO, FUNC2(pdev));
	if (ret)
		return ret;

	host->regs = FUNC7(pdev)[PCI_BAR_NO];

	FUNC4(pdev);

	ret = FUNC1(host);
	if (ret)
		return ret;

	FUNC3(pdev, host);

	return 0;
}