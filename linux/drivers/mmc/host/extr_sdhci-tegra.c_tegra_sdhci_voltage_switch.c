
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {int pad_calib_required; struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 int NVQUIRK_HAS_PADCALIB ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void tegra_sdhci_voltage_switch(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

 if (soc_data->nvquirks & NVQUIRK_HAS_PADCALIB)
  tegra_host->pad_calib_required = 1;
}
