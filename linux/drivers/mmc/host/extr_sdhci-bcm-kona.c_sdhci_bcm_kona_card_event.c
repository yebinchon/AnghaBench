
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int mmc; } ;


 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 scalar_t__ mmc_gpio_get_cd (int ) ;
 int sdhci_bcm_kona_sd_card_emulate (struct sdhci_host*,int) ;

__attribute__((used)) static void sdhci_bcm_kona_card_event(struct sdhci_host *host)
{
 if (mmc_gpio_get_cd(host->mmc) > 0) {
  dev_dbg(mmc_dev(host->mmc),
   "card inserted\n");
  sdhci_bcm_kona_sd_card_emulate(host, 1);
 } else {
  dev_dbg(mmc_dev(host->mmc),
   "card removed\n");
  sdhci_bcm_kona_sd_card_emulate(host, 0);
 }
}
