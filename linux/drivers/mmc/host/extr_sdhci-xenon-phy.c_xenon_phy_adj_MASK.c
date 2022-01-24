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
struct xenon_priv {scalar_t__ clock; scalar_t__ bus_width; scalar_t__ timing; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ timing; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_LEGACY ; 
 scalar_t__ XENON_DEFAULT_SDCLK_FREQ ; 
 struct xenon_priv* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,scalar_t__) ; 
 int FUNC3 (struct sdhci_host*) ; 

int FUNC4(struct sdhci_host *host, struct mmc_ios *ios)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct xenon_priv *priv = FUNC0(pltfm_host);
	int ret = 0;

	if (!host->clock) {
		priv->clock = 0;
		return 0;
	}

	/*
	 * The timing, frequency or bus width is changed,
	 * better to set eMMC PHY based on current setting
	 * and adjust Xenon SDHC delay.
	 */
	if ((host->clock == priv->clock) &&
	    (ios->bus_width == priv->bus_width) &&
	    (ios->timing == priv->timing))
		return 0;

	FUNC2(host, ios->timing);

	/* Update the record */
	priv->bus_width = ios->bus_width;

	priv->timing = ios->timing;
	priv->clock = host->clock;

	/* Legacy mode is a special case */
	if (ios->timing == MMC_TIMING_LEGACY)
		return 0;

	if (host->clock > XENON_DEFAULT_SDCLK_FREQ)
		ret = FUNC3(host);
	return ret;
}