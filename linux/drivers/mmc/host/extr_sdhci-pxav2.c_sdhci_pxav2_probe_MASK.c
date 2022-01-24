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
struct sdhci_pxa_platdata {int flags; int quirks; int host_caps; int pm_caps; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int quirks; int /*<<< orphan*/ * ops; TYPE_1__* mmc; } ;
struct device {struct sdhci_pxa_platdata* platform_data; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int dummy; } ;
struct clk {int quirks; int /*<<< orphan*/ * ops; TYPE_1__* mmc; } ;
struct TYPE_2__ {int caps; int pm_caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_NONREMOVABLE ; 
 int FUNC1 (struct sdhci_host*) ; 
 int PXA_FLAG_CARD_PERMANENT ; 
 int PXA_FLAG_SD_8_BIT_CAPABLE_SLOT ; 
 int SDHCI_QUIRK_BROKEN_ADMA ; 
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ; 
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ; 
 int SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct sdhci_host* FUNC5 (struct device*,char*) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sdhci_pxa_platdata* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  pxav2_sdhci_ops ; 
 int FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct sdhci_host* FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sdhci_pltfm_host* FUNC12 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_pxav2_of_match ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_pxa_platdata *pdata = pdev->dev.platform_data;
	struct device *dev = &pdev->dev;
	struct sdhci_host *host = NULL;
	const struct of_device_id *match;

	int ret;
	struct clk *clk;

	host = FUNC11(pdev, NULL, 0);
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC12(host);

	clk = FUNC5(dev, "PXA-SDHCLK");
	if (FUNC0(clk)) {
		FUNC4(dev, "failed to get io clock\n");
		ret = FUNC1(clk);
		goto free;
	}
	pltfm_host->clk = clk;
	ret = FUNC3(clk);
	if (ret) {
		FUNC4(&pdev->dev, "failed to enable io clock\n");
		goto free;
	}

	host->quirks = SDHCI_QUIRK_BROKEN_ADMA
		| SDHCI_QUIRK_BROKEN_TIMEOUT_VAL
		| SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN;

	match = FUNC6(FUNC7(sdhci_pxav2_of_match), &pdev->dev);
	if (match) {
		pdata = FUNC8(dev);
	}
	if (pdata) {
		if (pdata->flags & PXA_FLAG_CARD_PERMANENT) {
			/* on-chip device */
			host->quirks |= SDHCI_QUIRK_BROKEN_CARD_DETECTION;
			host->mmc->caps |= MMC_CAP_NONREMOVABLE;
		}

		/* If slot design supports 8 bit data, indicate this to MMC. */
		if (pdata->flags & PXA_FLAG_SD_8_BIT_CAPABLE_SLOT)
			host->mmc->caps |= MMC_CAP_8_BIT_DATA;

		if (pdata->quirks)
			host->quirks |= pdata->quirks;
		if (pdata->host_caps)
			host->mmc->caps |= pdata->host_caps;
		if (pdata->pm_caps)
			host->mmc->pm_caps |= pdata->pm_caps;
	}

	host->ops = &pxav2_sdhci_ops;

	ret = FUNC9(host);
	if (ret)
		goto disable_clk;

	return 0;

disable_clk:
	FUNC2(clk);
free:
	FUNC10(pdev);
	return ret;
}