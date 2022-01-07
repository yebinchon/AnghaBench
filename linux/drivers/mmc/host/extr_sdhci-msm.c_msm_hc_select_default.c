
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {scalar_t__ core_vendor_spec; scalar_t__ core_vendor_spec3; } ;
struct sdhci_msm_host {int use_cdclp533; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int CORE_HC_MCLK_SEL_DFLT ;
 int CORE_HC_MCLK_SEL_MASK ;
 int CORE_HC_SELECT_IN_EN ;
 int CORE_HC_SELECT_IN_MASK ;
 int CORE_PWRSAVE_DLL ;
 int readl_relaxed (scalar_t__) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void msm_hc_select_default(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 u32 config;
 const struct sdhci_msm_offset *msm_offset =
     msm_host->offset;

 if (!msm_host->use_cdclp533) {
  config = readl_relaxed(host->ioaddr +
    msm_offset->core_vendor_spec3);
  config &= ~CORE_PWRSAVE_DLL;
  writel_relaxed(config, host->ioaddr +
    msm_offset->core_vendor_spec3);
 }

 config = readl_relaxed(host->ioaddr + msm_offset->core_vendor_spec);
 config &= ~CORE_HC_MCLK_SEL_MASK;
 config |= CORE_HC_MCLK_SEL_DFLT;
 writel_relaxed(config, host->ioaddr + msm_offset->core_vendor_spec);
 config = readl_relaxed(host->ioaddr + msm_offset->core_vendor_spec);
 config &= ~CORE_HC_SELECT_IN_EN;
 config &= ~CORE_HC_SELECT_IN_MASK;
 writel_relaxed(config, host->ioaddr + msm_offset->core_vendor_spec);





 wmb();
}
