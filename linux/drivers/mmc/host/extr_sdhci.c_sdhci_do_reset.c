
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_host {int quirks; int flags; int preset_enabled; TYPE_2__* ops; struct mmc_host* mmc; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* enable_dma ) (struct sdhci_host*) ;int (* reset ) (struct sdhci_host*,int) ;} ;
struct TYPE_3__ {int (* get_cd ) (struct mmc_host*) ;} ;


 int SDHCI_QUIRK_NO_CARD_NO_RESET ;
 int SDHCI_RESET_ALL ;
 int SDHCI_USE_ADMA ;
 int SDHCI_USE_SDMA ;
 int stub1 (struct mmc_host*) ;
 int stub2 (struct sdhci_host*,int) ;
 int stub3 (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_do_reset(struct sdhci_host *host, u8 mask)
{
 if (host->quirks & SDHCI_QUIRK_NO_CARD_NO_RESET) {
  struct mmc_host *mmc = host->mmc;

  if (!mmc->ops->get_cd(mmc))
   return;
 }

 host->ops->reset(host, mask);

 if (mask & SDHCI_RESET_ALL) {
  if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA)) {
   if (host->ops->enable_dma)
    host->ops->enable_dma(host);
  }


  host->preset_enabled = 0;
 }
}
