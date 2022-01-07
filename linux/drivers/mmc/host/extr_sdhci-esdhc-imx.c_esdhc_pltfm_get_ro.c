
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; int mmc; } ;
struct esdhc_platform_data {int wp_type; } ;
struct pltfm_imx_data {struct esdhc_platform_data boarddata; } ;


 unsigned int ENOSYS ;



 scalar_t__ SDHCI_PRESENT_STATE ;
 int SDHCI_WRITE_PROTECT ;
 unsigned int mmc_gpio_get_ro (int ) ;
 int readl (scalar_t__) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int esdhc_pltfm_get_ro(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 struct esdhc_platform_data *boarddata = &imx_data->boarddata;

 switch (boarddata->wp_type) {
 case 129:
  return mmc_gpio_get_ro(host->mmc);
 case 130:
  return !(readl(host->ioaddr + SDHCI_PRESENT_STATE) &
          SDHCI_WRITE_PROTECT);
 case 128:
  break;
 }

 return -ENOSYS;
}
