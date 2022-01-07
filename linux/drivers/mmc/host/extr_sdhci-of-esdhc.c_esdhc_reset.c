
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int ier; } ;
struct sdhci_esdhc {scalar_t__ quirk_unreliable_pulse_detection; } ;


 int ESDHC_DLLCFG1 ;
 int ESDHC_DLL_PD_PULSE_STRETCH_SEL ;
 int ESDHC_TBCTL ;
 int ESDHC_TB_EN ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SIGNAL_ENABLE ;
 int mdelay (int) ;
 scalar_t__ of_find_compatible_node (int *,int *,char*) ;
 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_reset (struct sdhci_host*,int) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void esdhc_reset(struct sdhci_host *host, u8 mask)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_esdhc *esdhc = sdhci_pltfm_priv(pltfm_host);
 u32 val;

 sdhci_reset(host, mask);

 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);

 if (of_find_compatible_node(((void*)0), ((void*)0), "fsl,p2020-esdhc"))
  mdelay(5);

 if (mask & SDHCI_RESET_ALL) {
  val = sdhci_readl(host, ESDHC_TBCTL);
  val &= ~ESDHC_TB_EN;
  sdhci_writel(host, val, ESDHC_TBCTL);

  if (esdhc->quirk_unreliable_pulse_detection) {
   val = sdhci_readl(host, ESDHC_DLLCFG1);
   val &= ~ESDHC_DLL_PD_PULSE_STRETCH_SEL;
   sdhci_writel(host, val, ESDHC_DLLCFG1);
  }
 }
}
