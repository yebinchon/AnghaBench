
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int NVQUIRK_FORCE_SDHCI_SPEC_200 ;
 int SDHCI_HOST_VERSION ;
 int SDHCI_SPEC_200 ;
 int readw (scalar_t__) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 tegra_sdhci_readw(struct sdhci_host *host, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

 if (unlikely((soc_data->nvquirks & NVQUIRK_FORCE_SDHCI_SPEC_200) &&
   (reg == SDHCI_HOST_VERSION))) {

  return SDHCI_SPEC_200;
 }

 return readw(host->ioaddr + reg);
}
