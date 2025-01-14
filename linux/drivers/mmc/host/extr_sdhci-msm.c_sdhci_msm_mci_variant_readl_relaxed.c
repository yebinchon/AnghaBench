
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {scalar_t__ core_mem; } ;
struct sdhci_host {int dummy; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static u32 sdhci_msm_mci_variant_readl_relaxed(struct sdhci_host *host,
  u32 offset)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);

 return readl_relaxed(msm_host->core_mem + offset);
}
