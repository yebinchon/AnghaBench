
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int dummy; } ;
struct mmc_host {int caps; } ;
struct mmc_card {scalar_t__ type; } ;


 int MMC_CAP_4_BIT_DATA ;
 scalar_t__ MMC_TYPE_SDIO ;
 scalar_t__ is_imx31_mmc (struct mxcmci_host*) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void mxcmci_init_card(struct mmc_host *host, struct mmc_card *card)
{
 struct mxcmci_host *mxcmci = mmc_priv(host);
 if (is_imx31_mmc(mxcmci) && card->type == MMC_TYPE_SDIO)
  host->caps &= ~MMC_CAP_4_BIT_DATA;
 else
  host->caps |= MMC_CAP_4_BIT_DATA;
}
