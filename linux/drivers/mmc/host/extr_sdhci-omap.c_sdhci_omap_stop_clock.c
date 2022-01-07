
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_omap_host {int dummy; } ;


 int SDHCI_OMAP_SYSCTL ;
 int SYSCTL_CEN ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int ) ;

__attribute__((used)) static void sdhci_omap_stop_clock(struct sdhci_omap_host *omap_host)
{
 u32 reg;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_SYSCTL);
 reg &= ~SYSCTL_CEN;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_SYSCTL, reg);
}
