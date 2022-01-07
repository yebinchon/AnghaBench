
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 int CON_DDR ;
 unsigned int MMC_TIMING_MMC_DDR52 ;
 unsigned int MMC_TIMING_UHS_DDR50 ;
 int SDHCI_OMAP_CON ;
 int sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_start_clock (struct sdhci_omap_host*) ;
 int sdhci_omap_stop_clock (struct sdhci_omap_host*) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,int ) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_set_uhs_signaling (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void sdhci_omap_set_uhs_signaling(struct sdhci_host *host,
      unsigned int timing)
{
 u32 reg;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);

 sdhci_omap_stop_clock(omap_host);

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CON);
 if (timing == MMC_TIMING_UHS_DDR50 || timing == MMC_TIMING_MMC_DDR52)
  reg |= CON_DDR;
 else
  reg &= ~CON_DDR;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_CON, reg);

 sdhci_set_uhs_signaling(host, timing);
 sdhci_omap_start_clock(omap_host);
}
