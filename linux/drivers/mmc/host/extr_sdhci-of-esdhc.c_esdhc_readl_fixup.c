
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_esdhc {scalar_t__ vendor_ver; int quirk_ignore_data_inhibit; } ;


 int SDHCI_CAN_DO_ADMA1 ;
 int SDHCI_CAN_DO_ADMA2 ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CAPABILITIES_1 ;
 int SDHCI_CMD_LVL ;
 int SDHCI_DATA_INHIBIT ;
 int SDHCI_DATA_LVL_MASK ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_SUPPORT_DDR50 ;
 int SDHCI_SUPPORT_SDR104 ;
 int SDHCI_SUPPORT_SDR50 ;
 scalar_t__ VENDOR_V_22 ;
 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static u32 esdhc_readl_fixup(struct sdhci_host *host,
         int spec_reg, u32 value)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_esdhc *esdhc = sdhci_pltfm_priv(pltfm_host);
 u32 ret;
 if ((spec_reg == SDHCI_CAPABILITIES) && (value & SDHCI_CAN_DO_ADMA1)) {
  if (esdhc->vendor_ver > VENDOR_V_22) {
   ret = value | SDHCI_CAN_DO_ADMA2;
   return ret;
  }
 }







 if (spec_reg == SDHCI_PRESENT_STATE) {
  ret = value & 0x000fffff;
  ret |= (value >> 4) & SDHCI_DATA_LVL_MASK;
  ret |= (value << 1) & SDHCI_CMD_LVL;
  return ret;
 }






 if (spec_reg == SDHCI_CAPABILITIES_1) {
  ret = value & ~(SDHCI_SUPPORT_SDR50 | SDHCI_SUPPORT_SDR104 |
    SDHCI_SUPPORT_DDR50);
  return ret;
 }
 if ((spec_reg == SDHCI_PRESENT_STATE) &&
 (esdhc->quirk_ignore_data_inhibit == 1)) {
  ret = value & ~SDHCI_DATA_INHIBIT;
  return ret;
 }

 ret = value;
 return ret;
}
