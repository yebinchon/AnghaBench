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
struct sdhci_tegra_soc_data {scalar_t__ dma_mask; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,scalar_t__) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sdhci_tegra* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC4(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *platform = FUNC3(host);
	struct sdhci_tegra *tegra = FUNC2(platform);
	const struct sdhci_tegra_soc_data *soc = tegra->soc_data;
	struct device *dev = FUNC1(host->mmc);

	if (soc->dma_mask)
		return FUNC0(dev, soc->dma_mask);

	return 0;
}