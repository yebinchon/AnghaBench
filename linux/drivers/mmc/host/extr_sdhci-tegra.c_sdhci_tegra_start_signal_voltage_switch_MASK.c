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
struct sdhci_tegra {scalar_t__ pad_calib_required; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int /*<<< orphan*/  signal_voltage; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_180 ; 
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_330 ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 struct sdhci_tegra* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *mmc,
						   struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC0(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_tegra *tegra_host = FUNC1(pltfm_host);
	int ret = 0;

	if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
		ret = FUNC5(host, ios->signal_voltage, true);
		if (ret < 0)
			return ret;
		ret = FUNC3(mmc, ios);
	} else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
		ret = FUNC3(mmc, ios);
		if (ret < 0)
			return ret;
		ret = FUNC5(host, ios->signal_voltage, true);
	}

	if (tegra_host->pad_calib_required)
		FUNC4(host);

	return ret;
}