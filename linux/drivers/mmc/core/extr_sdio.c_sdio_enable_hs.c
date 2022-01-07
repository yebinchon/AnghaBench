
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {scalar_t__ type; } ;


 scalar_t__ MMC_TYPE_SDIO ;
 int mmc_sd_switch_hs (struct mmc_card*) ;
 int mmc_sdio_switch_hs (struct mmc_card*,int) ;

__attribute__((used)) static int sdio_enable_hs(struct mmc_card *card)
{
 int ret;

 ret = mmc_sdio_switch_hs(card, 1);
 if (ret <= 0 || card->type == MMC_TYPE_SDIO)
  return ret;

 ret = mmc_sd_switch_hs(card);
 if (ret <= 0)
  mmc_sdio_switch_hs(card, 0);

 return ret;
}
