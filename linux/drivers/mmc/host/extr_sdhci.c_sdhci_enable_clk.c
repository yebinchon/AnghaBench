
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ version; int mmc; scalar_t__ v4_mode; } ;
typedef int ktime_t ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int SDHCI_CLOCK_PLL_EN ;
 scalar_t__ SDHCI_SPEC_410 ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

void sdhci_enable_clk(struct sdhci_host *host, u16 clk)
{
 ktime_t timeout;

 clk |= SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);


 timeout = ktime_add_ms(ktime_get(), 150);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
  if (clk & SDHCI_CLOCK_INT_STABLE)
   break;
  if (timedout) {
   pr_err("%s: Internal clock never stabilised.\n",
          mmc_hostname(host->mmc));
   sdhci_dumpregs(host);
   return;
  }
  udelay(10);
 }

 if (host->version >= SDHCI_SPEC_410 && host->v4_mode) {
  clk |= SDHCI_CLOCK_PLL_EN;
  clk &= ~SDHCI_CLOCK_INT_STABLE;
  sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);


  timeout = ktime_add_ms(ktime_get(), 150);
  while (1) {
   bool timedout = ktime_after(ktime_get(), timeout);

   clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
   if (clk & SDHCI_CLOCK_INT_STABLE)
    break;
   if (timedout) {
    pr_err("%s: PLL clock never stabilised.\n",
           mmc_hostname(host->mmc));
    sdhci_dumpregs(host);
    return;
   }
   udelay(10);
  }
 }

 clk |= SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
}
