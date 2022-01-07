
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ power_mode; } ;
struct sdhci_host {int irq; } ;
typedef int ktime_t ;


 int CON_INIT ;
 int INT_CC_EN ;
 scalar_t__ MMC_POWER_ON ;
 int SDHCI_OMAP_CMD ;
 int SDHCI_OMAP_CON ;
 int SDHCI_OMAP_STAT ;
 int SDHCI_OMAP_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int ktime_add_ms (int ,int ) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_omap_init_74_clocks(struct sdhci_host *host, u8 power_mode)
{
 u32 reg;
 ktime_t timeout;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);

 if (omap_host->power_mode == power_mode)
  return;

 if (power_mode != MMC_POWER_ON)
  return;

 disable_irq(host->irq);

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CON);
 reg |= CON_INIT;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CON, reg);
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CMD, 0x0);


 timeout = ktime_add_ms(ktime_get(), SDHCI_OMAP_TIMEOUT);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  if (sdhci_omap_readl(omap_host, SDHCI_OMAP_STAT) & INT_CC_EN)
   break;
  if (WARN_ON(timedout))
   return;
  usleep_range(5, 10);
 }

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CON);
 reg &= ~CON_INIT;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CON, reg);
 sdhci_omap_writel(omap_host, SDHCI_OMAP_STAT, INT_CC_EN);

 enable_irq(host->irq);
}
