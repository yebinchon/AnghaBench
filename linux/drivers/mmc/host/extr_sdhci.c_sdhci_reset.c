
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int quirks2; int mmc; scalar_t__ clock; } ;
typedef int ktime_t ;


 int SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SOFTWARE_RESET ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,int) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_runtime_pm_bus_off (struct sdhci_host*) ;
 int sdhci_writeb (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

void sdhci_reset(struct sdhci_host *host, u8 mask)
{
 ktime_t timeout;

 sdhci_writeb(host, mask, SDHCI_SOFTWARE_RESET);

 if (mask & SDHCI_RESET_ALL) {
  host->clock = 0;

  if (host->quirks2 & SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON)
   sdhci_runtime_pm_bus_off(host);
 }


 timeout = ktime_add_ms(ktime_get(), 100);


 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  if (!(sdhci_readb(host, SDHCI_SOFTWARE_RESET) & mask))
   break;
  if (timedout) {
   pr_err("%s: Reset 0x%x never completed.\n",
    mmc_hostname(host->mmc), (int)mask);
   sdhci_dumpregs(host);
   return;
  }
  udelay(10);
 }
}
