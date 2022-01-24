#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct alcor_pci_priv* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  cmd_mutex; struct alcor_pci_priv* alcor_pci; int /*<<< orphan*/  cur_power_mode; TYPE_1__* dev; } ;
struct alcor_pci_priv {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU6601_MS_INT_ENABLE ; 
 int /*<<< orphan*/  AU6601_REG_INT_ENABLE ; 
 int /*<<< orphan*/  DRV_NAME_ALCOR_PCI_SDMMC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MMC_POWER_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  alcor_irq ; 
 int /*<<< orphan*/  alcor_irq_thread ; 
 int /*<<< orphan*/  alcor_timeout_timer ; 
 int /*<<< orphan*/  FUNC3 (struct alcor_pci_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct alcor_sdmmc_host*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 struct mmc_host* FUNC8 (int,TYPE_1__*) ; 
 struct alcor_sdmmc_host* FUNC9 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct alcor_pci_priv *priv = pdev->dev.platform_data;
	struct mmc_host *mmc;
	struct alcor_sdmmc_host *host;
	int ret;

	mmc = FUNC8(sizeof(*host), &pdev->dev);
	if (!mmc) {
		FUNC4(&pdev->dev, "Can't allocate MMC\n");
		return -ENOMEM;
	}

	host = FUNC9(mmc);
	host->dev = &pdev->dev;
	host->cur_power_mode = MMC_POWER_UNDEFINED;
	host->alcor_pci = priv;

	/* make sure irqs are disabled */
	FUNC3(priv, 0, AU6601_REG_INT_ENABLE);
	FUNC3(priv, 0, AU6601_MS_INT_ENABLE);

	ret = FUNC6(&pdev->dev, priv->irq,
			alcor_irq, alcor_irq_thread, IRQF_SHARED,
			DRV_NAME_ALCOR_PCI_SDMMC, host);

	if (ret) {
		FUNC4(&pdev->dev, "Failed to get irq for data line\n");
		return ret;
	}

	FUNC10(&host->cmd_mutex);
	FUNC0(&host->timeout_work, alcor_timeout_timer);

	FUNC2(host);
	FUNC1(host);

	FUNC5(&pdev->dev, host);
	FUNC7(mmc);
	return 0;
}