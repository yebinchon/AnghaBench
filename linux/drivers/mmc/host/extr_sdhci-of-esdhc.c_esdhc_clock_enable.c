
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;
typedef int ktime_t ;


 int ESDHC_CLOCK_SDCLKEN ;
 int ESDHC_CLOCK_STABLE ;
 int ESDHC_PRSSTAT ;
 int ESDHC_SYSTEM_CONTROL ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void esdhc_clock_enable(struct sdhci_host *host, bool enable)
{
 u32 val;
 ktime_t timeout;

 val = sdhci_readl(host, ESDHC_SYSTEM_CONTROL);

 if (enable)
  val |= ESDHC_CLOCK_SDCLKEN;
 else
  val &= ~ESDHC_CLOCK_SDCLKEN;

 sdhci_writel(host, val, ESDHC_SYSTEM_CONTROL);


 timeout = ktime_add_ms(ktime_get(), 20);
 val = ESDHC_CLOCK_STABLE;
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  if (sdhci_readl(host, ESDHC_PRSSTAT) & val)
   break;
  if (timedout) {
   pr_err("%s: Internal clock never stabilised.\n",
    mmc_hostname(host->mmc));
   break;
  }
  udelay(10);
 }
}
