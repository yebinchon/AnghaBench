#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_pltfm_data {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; int /*<<< orphan*/  quirks; int /*<<< orphan*/  quirks2; } ;
struct sdhci_at91_priv {int restore_needed; struct sdhci_host* hclock; struct sdhci_host* mainck; struct sdhci_host* gck; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {struct sdhci_pltfm_data* data; } ;
struct TYPE_4__ {int caps; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int MMC_CAP_NEEDS_POLL ; 
 int MMC_CAP_NONREMOVABLE ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  SDHCI_QUIRK2_BROKEN_HS200 ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_CARD_DETECTION ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_at91_dt_match ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*) ; 
 struct sdhci_host* FUNC23 (struct platform_device*,struct sdhci_pltfm_data const*,int) ; 
 struct sdhci_at91_priv* FUNC24 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC25 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	const struct of_device_id	*match;
	const struct sdhci_pltfm_data	*soc_data;
	struct sdhci_host		*host;
	struct sdhci_pltfm_host		*pltfm_host;
	struct sdhci_at91_priv		*priv;
	int				ret;

	match = FUNC8(sdhci_at91_dt_match, &pdev->dev);
	if (!match)
		return -EINVAL;
	soc_data = match->data;

	host = FUNC23(pdev, soc_data, sizeof(*priv));
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC25(host);
	priv = FUNC24(pltfm_host);

	priv->mainck = FUNC4(&pdev->dev, "baseclk");
	if (FUNC0(priv->mainck)) {
		FUNC3(&pdev->dev, "failed to get baseclk\n");
		return FUNC1(priv->mainck);
	}

	priv->hclock = FUNC4(&pdev->dev, "hclock");
	if (FUNC0(priv->hclock)) {
		FUNC3(&pdev->dev, "failed to get hclock\n");
		return FUNC1(priv->hclock);
	}

	priv->gck = FUNC4(&pdev->dev, "multclk");
	if (FUNC0(priv->gck)) {
		FUNC3(&pdev->dev, "failed to get multclk\n");
		return FUNC1(priv->gck);
	}

	ret = FUNC19(&pdev->dev);
	if (ret)
		goto sdhci_pltfm_free;

	priv->restore_needed = false;

	ret = FUNC7(host->mmc);
	if (ret)
		goto clocks_disable_unprepare;

	FUNC21(pdev);

	FUNC11(&pdev->dev);
	FUNC14(&pdev->dev);
	FUNC10(&pdev->dev);
	FUNC15(&pdev->dev, 50);
	FUNC17(&pdev->dev);

	/* HS200 is broken at this moment */
	host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;

	ret = FUNC18(host);
	if (ret)
		goto pm_runtime_disable;

	/*
	 * When calling sdhci_runtime_suspend_host(), the sdhci layer makes
	 * the assumption that all the clocks of the controller are disabled.
	 * It means we can't get irq from it when it is runtime suspended.
	 * For that reason, it is not planned to wake-up on a card detect irq
	 * from the controller.
	 * If we want to use runtime PM and to be able to wake-up on card
	 * insertion, we have to use a GPIO for the card detection or we can
	 * use polling. Be aware that using polling will resume/suspend the
	 * controller between each attempt.
	 * Disable SDHCI_QUIRK_BROKEN_CARD_DETECTION to be sure nobody tries
	 * to enable polling via device tree with broken-cd property.
	 */
	if (FUNC5(host->mmc) &&
	    FUNC6(host->mmc) < 0) {
		host->mmc->caps |= MMC_CAP_NEEDS_POLL;
		host->quirks &= ~SDHCI_QUIRK_BROKEN_CARD_DETECTION;
	}

	/*
	 * If the device attached to the MMC bus is not removable, it is safer
	 * to set the Force Card Detect bit. People often don't connect the
	 * card detect signal and use this pin for another purpose. If the card
	 * detect pin is not muxed to SDHCI controller, a default value is
	 * used. This value can be different from a SoC revision to another
	 * one. Problems come when this default value is not card present. To
	 * avoid this case, if the device is non removable then the card
	 * detection procedure using the SDMCC_CD signal is bypassed.
	 * This bit is reset when a software reset for all command is performed
	 * so we need to implement our own reset function to set back this bit.
	 */
	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
		FUNC20(host);

	FUNC12(&pdev->dev);

	return 0;

pm_runtime_disable:
	FUNC9(&pdev->dev);
	FUNC16(&pdev->dev);
	FUNC13(&pdev->dev);
clocks_disable_unprepare:
	FUNC2(priv->gck);
	FUNC2(priv->mainck);
	FUNC2(priv->hclock);
sdhci_pltfm_free:
	FUNC22(pdev);
	return ret;
}