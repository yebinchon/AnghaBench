
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ actual_clock; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int mdelay (int) ;
 int mmc_hostname (TYPE_1__*) ;
 int pr_err (char*,int ) ;
 int sdhci_calc_clk (struct sdhci_host*,unsigned int,scalar_t__*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_at91_set_clock(struct sdhci_host *host, unsigned int clock)
{
 u16 clk;
 unsigned long timeout;

 host->mmc->actual_clock = 0;
 clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
 clk &= SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);

 if (clock == 0)
  return;

 clk = sdhci_calc_clk(host, clock, &host->mmc->actual_clock);

 clk |= SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);


 timeout = 20;
 while (!((clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL))
  & SDHCI_CLOCK_INT_STABLE)) {
  if (timeout == 0) {
   pr_err("%s: Internal clock never stabilised.\n",
          mmc_hostname(host->mmc));
   return;
  }
  timeout--;
  mdelay(1);
 }

 clk |= SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
}
