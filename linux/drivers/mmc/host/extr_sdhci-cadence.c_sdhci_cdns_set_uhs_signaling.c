
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {int dummy; } ;
struct sdhci_cdns_priv {int enhanced_strobe; } ;






 scalar_t__ SDHCI_CDNS_HRS06_MODE_MMC_DDR ;
 scalar_t__ SDHCI_CDNS_HRS06_MODE_MMC_HS200 ;
 scalar_t__ SDHCI_CDNS_HRS06_MODE_MMC_HS400 ;
 scalar_t__ SDHCI_CDNS_HRS06_MODE_MMC_HS400ES ;
 scalar_t__ SDHCI_CDNS_HRS06_MODE_MMC_SDR ;
 scalar_t__ SDHCI_CDNS_HRS06_MODE_SD ;
 struct sdhci_cdns_priv* sdhci_cdns_priv (struct sdhci_host*) ;
 int sdhci_cdns_set_emmc_mode (struct sdhci_cdns_priv*,scalar_t__) ;
 int sdhci_set_uhs_signaling (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void sdhci_cdns_set_uhs_signaling(struct sdhci_host *host,
      unsigned int timing)
{
 struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
 u32 mode;

 switch (timing) {
 case 130:
  mode = SDHCI_CDNS_HRS06_MODE_MMC_SDR;
  break;
 case 131:
  mode = SDHCI_CDNS_HRS06_MODE_MMC_DDR;
  break;
 case 129:
  mode = SDHCI_CDNS_HRS06_MODE_MMC_HS200;
  break;
 case 128:
  if (priv->enhanced_strobe)
   mode = SDHCI_CDNS_HRS06_MODE_MMC_HS400ES;
  else
   mode = SDHCI_CDNS_HRS06_MODE_MMC_HS400;
  break;
 default:
  mode = SDHCI_CDNS_HRS06_MODE_SD;
  break;
 }

 sdhci_cdns_set_emmc_mode(priv, mode);


 if (mode == SDHCI_CDNS_HRS06_MODE_SD)
  sdhci_set_uhs_signaling(host, timing);
}
