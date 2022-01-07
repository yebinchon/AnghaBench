
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {unsigned int actual_clock; int caps; } ;
struct bcm2835_host {int cdiv; unsigned int max_clk; int ns_per_fifo_word; scalar_t__ ioaddr; } ;


 int MMC_CAP_4_BIT_DATA ;
 scalar_t__ SDCDIV ;
 int SDCDIV_MAX_CDIV ;
 scalar_t__ SDTOUT ;
 struct mmc_host* mmc_from_priv (struct bcm2835_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_set_clock(struct bcm2835_host *host, unsigned int clock)
{
 struct mmc_host *mmc = mmc_from_priv(host);
 int div;
 if (clock < 100000) {



  host->cdiv = SDCDIV_MAX_CDIV;
  writel(host->cdiv, host->ioaddr + SDCDIV);
  return;
 }

 div = host->max_clk / clock;
 if (div < 2)
  div = 2;
 if ((host->max_clk / div) > clock)
  div++;
 div -= 2;

 if (div > SDCDIV_MAX_CDIV)
  div = SDCDIV_MAX_CDIV;

 clock = host->max_clk / (div + 2);
 mmc->actual_clock = clock;



 host->ns_per_fifo_word = (1000000000 / clock) *
  ((mmc->caps & MMC_CAP_4_BIT_DATA) ? 8 : 32);

 host->cdiv = div;
 writel(host->cdiv, host->ioaddr + SDCDIV);


 writel(mmc->actual_clock / 2, host->ioaddr + SDTOUT);
}
