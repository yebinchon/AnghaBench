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
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {int pad_calib_required; struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int NVQUIRK_HAS_PADCALIB ; 
 struct sdhci_tegra* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_tegra *tegra_host = FUNC0(pltfm_host);
	const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

	if (soc_data->nvquirks & NVQUIRK_HAS_PADCALIB)
		tegra_host->pad_calib_required = true;
}