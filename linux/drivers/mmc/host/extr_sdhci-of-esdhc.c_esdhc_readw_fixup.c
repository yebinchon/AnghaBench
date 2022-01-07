
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_esdhc {scalar_t__ quirk_incorrect_hostver; } ;


 int SDHCI_HOST_VERSION ;
 int SDHCI_SPEC_200 ;
 int SDHCI_VENDOR_VER_SHIFT ;
 int VENDOR_V_23 ;
 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static u16 esdhc_readw_fixup(struct sdhci_host *host,
         int spec_reg, u32 value)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_esdhc *esdhc = sdhci_pltfm_priv(pltfm_host);
 u16 ret;
 int shift = (spec_reg & 0x2) * 8;

 if (spec_reg == SDHCI_HOST_VERSION)
  ret = value & 0xffff;
 else
  ret = (value >> shift) & 0xffff;



 if ((spec_reg == SDHCI_HOST_VERSION) &&
     (esdhc->quirk_incorrect_hostver))
  ret = (VENDOR_V_23 << SDHCI_VENDOR_VER_SHIFT) | SDHCI_SPEC_200;
 return ret;
}
