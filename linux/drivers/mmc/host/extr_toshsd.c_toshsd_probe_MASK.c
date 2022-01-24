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
struct toshsd_host {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  lock; struct pci_dev* pdev; struct mmc_host* mmc; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct mmc_host {int f_min; int f_max; int /*<<< orphan*/  ocr_avail; int /*<<< orphan*/  caps; int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int HCLK ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MMC_CAP_4_BIT_DATA ; 
 int /*<<< orphan*/  MMC_VDD_32_33 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct mmc_host* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 struct toshsd_host* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct toshsd_host*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct toshsd_host*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct toshsd_host*) ; 
 int /*<<< orphan*/  toshsd_irq ; 
 int /*<<< orphan*/  toshsd_ops ; 
 int /*<<< orphan*/  toshsd_thread_irq ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int ret;
	struct toshsd_host *host;
	struct mmc_host *mmc;
	resource_size_t base;

	ret = FUNC6(pdev);
	if (ret)
		return ret;

	mmc = FUNC2(sizeof(struct toshsd_host), &pdev->dev);
	if (!mmc) {
		ret = -ENOMEM;
		goto err;
	}

	host = FUNC4(mmc);
	host->mmc = mmc;

	host->pdev = pdev;
	FUNC12(pdev, host);

	ret = FUNC10(pdev, DRIVER_NAME);
	if (ret)
		goto free;

	host->ioaddr = FUNC7(pdev, 0, 0);
	if (!host->ioaddr) {
		ret = -ENOMEM;
		goto release;
	}

	/* Set MMC host parameters */
	mmc->ops = &toshsd_ops;
	mmc->caps = MMC_CAP_4_BIT_DATA;
	mmc->ocr_avail = MMC_VDD_32_33;

	mmc->f_min = HCLK / 512;
	mmc->f_max = HCLK;

	FUNC15(&host->lock);

	FUNC16(host);

	ret = FUNC14(pdev->irq, toshsd_irq, toshsd_thread_irq,
				   IRQF_SHARED, DRIVER_NAME, host);
	if (ret)
		goto unmap;

	FUNC1(mmc);

	base = FUNC11(pdev, 0);
	FUNC0(&pdev->dev, "MMIO %pa, IRQ %d\n", &base, pdev->irq);

	FUNC13(&pdev->dev, 1);

	return 0;

unmap:
	FUNC8(pdev, host->ioaddr);
release:
	FUNC9(pdev);
free:
	FUNC3(mmc);
	FUNC12(pdev, NULL);
err:
	FUNC5(pdev);
	return ret;
}