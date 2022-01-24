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
struct sdhci_pxa_platdata {int flags; int quirks; int quirks2; int host_caps; int host_caps2; int pm_caps; } ;
struct sdhci_pxa {struct sdhci_host* clk_core; struct sdhci_host* clk_io; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int quirks; int quirks2; TYPE_1__* mmc; } ;
struct device {struct sdhci_pxa_platdata* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int caps; int caps2; int pm_caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int MMC_CAP_1_8V_DDR ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_NONREMOVABLE ; 
 int MMC_PM_WAKE_SDIO_IRQ ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  PXAV3_RPM_DELAY_MS ; 
 int PXA_FLAG_CARD_PERMANENT ; 
 int PXA_FLAG_SD_8_BIT_CAPABLE_SLOT ; 
 int FUNC2 (struct platform_device*,struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 void* FUNC7 (struct device*,char*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*,int) ; 
 struct sdhci_pxa_platdata* FUNC23 (struct device*) ; 
 int FUNC24 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*) ; 
 struct sdhci_host* FUNC27 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct sdhci_pxa* FUNC28 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC29 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_pxav3_of_match ; 
 int /*<<< orphan*/  sdhci_pxav3_pdata ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_pxa_platdata *pdata = pdev->dev.platform_data;
	struct device *dev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node;
	struct sdhci_host *host = NULL;
	struct sdhci_pxa *pxa = NULL;
	const struct of_device_id *match;
	int ret;

	host = FUNC27(pdev, &sdhci_pxav3_pdata, sizeof(*pxa));
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC29(host);
	pxa = FUNC28(pltfm_host);

	pxa->clk_io = FUNC7(dev, "io");
	if (FUNC0(pxa->clk_io))
		pxa->clk_io = FUNC7(dev, NULL);
	if (FUNC0(pxa->clk_io)) {
		FUNC5(dev, "failed to get io clock\n");
		ret = FUNC1(pxa->clk_io);
		goto err_clk_get;
	}
	pltfm_host->clk = pxa->clk_io;
	FUNC4(pxa->clk_io);

	pxa->clk_core = FUNC7(dev, "core");
	if (!FUNC0(pxa->clk_core))
		FUNC4(pxa->clk_core);

	/* enable 1/8V DDR capable */
	host->mmc->caps |= MMC_CAP_1_8V_DDR;

	if (FUNC11(np, "marvell,armada-380-sdhci")) {
		ret = FUNC2(pdev, host);
		if (ret < 0)
			goto err_mbus_win;
		ret = FUNC9(pdev, FUNC10());
		if (ret < 0)
			goto err_mbus_win;
	}

	match = FUNC12(FUNC13(sdhci_pxav3_of_match), &pdev->dev);
	if (match) {
		ret = FUNC8(host->mmc);
		if (ret)
			goto err_of_parse;
		FUNC25(pdev);
		pdata = FUNC23(dev);
		pdev->dev.platform_data = pdata;
	} else if (pdata) {
		/* on-chip device */
		if (pdata->flags & PXA_FLAG_CARD_PERMANENT)
			host->mmc->caps |= MMC_CAP_NONREMOVABLE;

		/* If slot design supports 8 bit data, indicate this to MMC. */
		if (pdata->flags & PXA_FLAG_SD_8_BIT_CAPABLE_SLOT)
			host->mmc->caps |= MMC_CAP_8_BIT_DATA;

		if (pdata->quirks)
			host->quirks |= pdata->quirks;
		if (pdata->quirks2)
			host->quirks2 |= pdata->quirks2;
		if (pdata->host_caps)
			host->mmc->caps |= pdata->host_caps;
		if (pdata->host_caps2)
			host->mmc->caps2 |= pdata->host_caps2;
		if (pdata->pm_caps)
			host->mmc->pm_caps |= pdata->pm_caps;
	}

	FUNC16(&pdev->dev);
	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev, PXAV3_RPM_DELAY_MS);
	FUNC21(&pdev->dev);
	FUNC15(&pdev->dev);
	FUNC22(&pdev->dev, 1);

	ret = FUNC24(host);
	if (ret)
		goto err_add_host;

	if (host->mmc->pm_caps & MMC_PM_WAKE_SDIO_IRQ)
		FUNC6(&pdev->dev, 1);

	FUNC17(&pdev->dev);

	return 0;

err_add_host:
	FUNC14(&pdev->dev);
	FUNC18(&pdev->dev);
err_of_parse:
err_mbus_win:
	FUNC3(pxa->clk_io);
	FUNC3(pxa->clk_core);
err_clk_get:
	FUNC26(pdev);
	return ret;
}