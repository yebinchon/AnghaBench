
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;
typedef int ktime_t ;


 int SDHCI_CARD_PRESENT ;
 int SDHCI_CARD_PRES_SHIFT ;
 int SDHCI_CD_LVL ;
 int SDHCI_CD_LVL_SHIFT ;
 int SDHCI_PRESENT_STATE ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void sdhci_o2_wait_card_detect_stable(struct sdhci_host *host)
{
 ktime_t timeout;
 u32 scratch32;


 timeout = ktime_add_ms(ktime_get(), 50);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  scratch32 = sdhci_readl(host, SDHCI_PRESENT_STATE);
  if ((scratch32 & SDHCI_CARD_PRESENT) >> SDHCI_CARD_PRES_SHIFT
      == (scratch32 & SDHCI_CD_LVL) >> SDHCI_CD_LVL_SHIFT)
   break;

  if (timedout) {
   pr_err("%s: Card Detect debounce never finished.\n",
          mmc_hostname(host->mmc));
   sdhci_dumpregs(host);
   return;
  }
  udelay(10);
 }
}
