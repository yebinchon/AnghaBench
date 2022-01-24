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
typedef  int u32 ;
struct sdhci_pltfm_host {int clock; } ;
struct sdhci_host {TYPE_1__* mmc; int /*<<< orphan*/  quirks2; int /*<<< orphan*/  quirks; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pm_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_PM_KEEP_POWER ; 
 int /*<<< orphan*/  MMC_PM_WAKE_SDIO_IRQ ; 
 int /*<<< orphan*/  SDHCI_QUIRK2_NO_1_8_V ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_CARD_DETECTION ; 
 int /*<<< orphan*/  SDHCI_QUIRK_FORCE_1_BIT_DATA ; 
 int /*<<< orphan*/  SDHCI_QUIRK_INVERTED_WRITE_PROTECT ; 
 int /*<<< orphan*/  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 ; 
 scalar_t__ FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,char*,int*) ; 
 struct sdhci_host* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 scalar_t__ FUNC6 (struct device*) ; 

void FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sdhci_host *host = FUNC3(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	u32 bus_width;

	if (FUNC0(dev, "sdhci,auto-cmd12"))
		host->quirks |= SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12;

	if (FUNC0(dev, "sdhci,1-bit-only") ||
	    (FUNC2(dev, "bus-width", &bus_width) == 0 &&
	    bus_width == 1))
		host->quirks |= SDHCI_QUIRK_FORCE_1_BIT_DATA;

	if (FUNC6(dev))
		host->quirks |= SDHCI_QUIRK_INVERTED_WRITE_PROTECT;

	if (FUNC0(dev, "broken-cd"))
		host->quirks |= SDHCI_QUIRK_BROKEN_CARD_DETECTION;

	if (FUNC0(dev, "no-1-8-v"))
		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;

	FUNC4(pdev);

	FUNC2(dev, "clock-frequency", &pltfm_host->clock);

	if (FUNC0(dev, "keep-power-in-suspend"))
		host->mmc->pm_caps |= MMC_PM_KEEP_POWER;

	if (FUNC1(dev, "wakeup-source") ||
	    FUNC1(dev, "enable-sdio-wakeup")) /* legacy */
		host->mmc->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;
}