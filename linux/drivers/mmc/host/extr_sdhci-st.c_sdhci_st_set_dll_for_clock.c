
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_mmc_platform_data {int top_ioaddr; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; int ioaddr; } ;


 scalar_t__ CLK_TO_CHECK_DLL_LOCK ;
 struct st_mmc_platform_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int st_mmcss_lock_dll (int ) ;
 int st_mmcss_set_dll (int ) ;

__attribute__((used)) static int sdhci_st_set_dll_for_clock(struct sdhci_host *host)
{
 int ret = 0;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct st_mmc_platform_data *pdata = sdhci_pltfm_priv(pltfm_host);

 if (host->clock > CLK_TO_CHECK_DLL_LOCK) {
  st_mmcss_set_dll(pdata->top_ioaddr);
  ret = st_mmcss_lock_dll(host->ioaddr);
 }

 return ret;
}
