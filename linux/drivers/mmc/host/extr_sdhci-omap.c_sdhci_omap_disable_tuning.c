
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_omap_host {int dummy; } ;


 int AC12_SCLK_SEL ;
 int DLL_FORCE_VALUE ;
 int DLL_SWT ;
 int SDHCI_OMAP_AC12 ;
 int SDHCI_OMAP_DLL ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int) ;

__attribute__((used)) static void sdhci_omap_disable_tuning(struct sdhci_omap_host *omap_host)
{
 u32 reg;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_AC12);
 reg &= ~AC12_SCLK_SEL;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_AC12, reg);

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_DLL);
 reg &= ~(DLL_FORCE_VALUE | DLL_SWT);
 sdhci_omap_writel(omap_host, SDHCI_OMAP_DLL, reg);
}
