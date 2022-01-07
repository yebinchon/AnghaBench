
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {scalar_t__ clock; scalar_t__ bus_width; } ;
struct mmc_host {int dummy; } ;
struct bcm2835_host {scalar_t__ clock; int mutex; scalar_t__ ioaddr; int hcfg; } ;


 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ SDHCFG ;
 int SDHCFG_SLOW_CARD ;
 int SDHCFG_WIDE_EXT_BUS ;
 int SDHCFG_WIDE_INT_BUS ;
 int bcm2835_set_clock (struct bcm2835_host*,scalar_t__) ;
 struct bcm2835_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bcm2835_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct bcm2835_host *host = mmc_priv(mmc);

 mutex_lock(&host->mutex);

 if (!ios->clock || ios->clock != host->clock) {
  bcm2835_set_clock(host, ios->clock);
  host->clock = ios->clock;
 }


 host->hcfg &= ~SDHCFG_WIDE_EXT_BUS;
 if (ios->bus_width == MMC_BUS_WIDTH_4)
  host->hcfg |= SDHCFG_WIDE_EXT_BUS;

 host->hcfg |= SDHCFG_WIDE_INT_BUS;


 host->hcfg |= SDHCFG_SLOW_CARD;

 writel(host->hcfg, host->ioaddr + SDHCFG);

 mutex_unlock(&host->mutex);
}
