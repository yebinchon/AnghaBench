
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_msm_offset {scalar_t__ core_dll_config; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int CORE_CDR_EN ;
 int CORE_CDR_EXT_EN ;
 int readl_relaxed (scalar_t__) ;
 struct sdhci_msm_offset* sdhci_priv_msm_offset (struct sdhci_host*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_msm_set_cdr(struct sdhci_host *host, bool enable)
{
 const struct sdhci_msm_offset *msm_offset = sdhci_priv_msm_offset(host);
 u32 config, oldconfig = readl_relaxed(host->ioaddr +
           msm_offset->core_dll_config);

 config = oldconfig;
 if (enable) {
  config |= CORE_CDR_EN;
  config &= ~CORE_CDR_EXT_EN;
 } else {
  config &= ~CORE_CDR_EN;
  config |= CORE_CDR_EXT_EN;
 }

 if (config != oldconfig) {
  writel_relaxed(config, host->ioaddr +
          msm_offset->core_dll_config);
 }
}
