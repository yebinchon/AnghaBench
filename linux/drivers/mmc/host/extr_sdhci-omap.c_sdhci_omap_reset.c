
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ is_tuning; } ;
struct sdhci_host {int dummy; } ;


 int SDHCI_RESET_DATA ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_reset (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_omap_reset(struct sdhci_host *host, u8 mask)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);


 if (omap_host->is_tuning)
  mask &= ~SDHCI_RESET_DATA;

 sdhci_reset(host, mask);
}
