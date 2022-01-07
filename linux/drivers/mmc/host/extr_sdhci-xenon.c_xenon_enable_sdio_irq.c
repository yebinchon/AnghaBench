
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xenon_priv {int sdhc_id; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int XENON_SLOT_TYPE_SDIO_SHIFT ;
 int XENON_SYS_CFG_INFO ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_enable_sdio_irq (struct mmc_host*,int) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void xenon_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 u32 reg;
 u8 sdhc_id = priv->sdhc_id;

 sdhci_enable_sdio_irq(mmc, enable);

 if (enable) {




  reg = sdhci_readl(host, XENON_SYS_CFG_INFO);
  reg |= (1 << (sdhc_id + XENON_SLOT_TYPE_SDIO_SHIFT));
  sdhci_writel(host, reg, XENON_SYS_CFG_INFO);
 } else {

  reg = sdhci_readl(host, XENON_SYS_CFG_INFO);
  reg &= ~(1 << (sdhc_id + XENON_SLOT_TYPE_SDIO_SHIFT));
  sdhci_writel(host, reg, XENON_SYS_CFG_INFO);
 }
}
