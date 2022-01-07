
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int mmc; } ;
typedef int ktime_t ;


 int O2_PLL_DLL_WDT_CONTROL1 ;
 int O2_PLL_FORCE_ACTIVE ;
 int O2_PLL_LOCK_STATUS ;
 int O2_PLL_SOFT_RESET ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_o2_wait_card_detect_stable (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void sdhci_o2_enable_internal_clock(struct sdhci_host *host)
{
 ktime_t timeout;
 u16 scratch;
 u32 scratch32;


 scratch32 = sdhci_readl(host, O2_PLL_DLL_WDT_CONTROL1);
 scratch32 |= O2_PLL_SOFT_RESET;
 sdhci_writel(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);
 udelay(1);
 scratch32 &= ~(O2_PLL_SOFT_RESET);
 sdhci_writel(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);


 scratch32 |= O2_PLL_FORCE_ACTIVE;
 sdhci_writel(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);


 timeout = ktime_add_ms(ktime_get(), 20);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  scratch = sdhci_readw(host, O2_PLL_DLL_WDT_CONTROL1);
  if (scratch & O2_PLL_LOCK_STATUS)
   break;
  if (timedout) {
   pr_err("%s: Internal clock never stabilised.\n",
          mmc_hostname(host->mmc));
   sdhci_dumpregs(host);
   goto out;
  }
  udelay(10);
 }


 udelay(1);
 sdhci_o2_wait_card_detect_stable(host);

out:

 scratch32 = sdhci_readl(host, O2_PLL_DLL_WDT_CONTROL1);
 scratch32 &= ~O2_PLL_FORCE_ACTIVE;
 sdhci_writel(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);
}
