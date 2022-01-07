
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_omap_host {unsigned int bus_mode; } ;


 int CON_OD ;
 unsigned int MMC_BUSMODE_OPENDRAIN ;
 int SDHCI_OMAP_CON ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int ) ;

__attribute__((used)) static void sdhci_omap_set_bus_mode(struct sdhci_omap_host *omap_host,
        unsigned int mode)
{
 u32 reg;

 if (omap_host->bus_mode == mode)
  return;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CON);
 if (mode == MMC_BUSMODE_OPENDRAIN)
  reg |= CON_OD;
 else
  reg &= ~CON_OD;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CON, reg);

 omap_host->bus_mode = mode;
}
