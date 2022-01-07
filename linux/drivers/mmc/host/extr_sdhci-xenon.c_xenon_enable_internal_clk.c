
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int dev_err (int ,char*) ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_dev (int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int xenon_enable_internal_clk(struct sdhci_host *host)
{
 u32 reg;
 ktime_t timeout;

 reg = sdhci_readl(host, SDHCI_CLOCK_CONTROL);
 reg |= SDHCI_CLOCK_INT_EN;
 sdhci_writel(host, reg, SDHCI_CLOCK_CONTROL);

 timeout = ktime_add_ms(ktime_get(), 20);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  reg = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
  if (reg & SDHCI_CLOCK_INT_STABLE)
   break;
  if (timedout) {
   dev_err(mmc_dev(host->mmc), "Internal clock never stabilised.\n");
   return -ETIMEDOUT;
  }
  usleep_range(900, 1100);
 }

 return 0;
}
