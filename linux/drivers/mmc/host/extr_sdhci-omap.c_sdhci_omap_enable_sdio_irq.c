
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int CON_CLKEXTFREE ;
 int CON_CTPL ;
 int SDHCI_OMAP_CON ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_enable_sdio_irq (struct mmc_host*,int) ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_omap_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);
 u32 reg;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CON);
 if (enable)
  reg |= (CON_CTPL | CON_CLKEXTFREE);
 else
  reg &= ~(CON_CTPL | CON_CLKEXTFREE);
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CON, reg);

 sdhci_enable_sdio_irq(mmc, enable);
}
