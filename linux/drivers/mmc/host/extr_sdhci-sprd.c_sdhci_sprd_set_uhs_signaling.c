
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdhci_sprd_host {int * phy_delay; } ;
struct sdhci_host {unsigned int timing; struct mmc_host* mmc; } ;
struct TYPE_2__ {int enhanced_strobe; } ;
struct mmc_host {TYPE_1__ ios; } ;
 int SDHCI_CTRL_UHS_DDR50 ;
 int SDHCI_CTRL_UHS_MASK ;
 int SDHCI_CTRL_UHS_SDR104 ;
 int SDHCI_CTRL_UHS_SDR12 ;
 int SDHCI_CTRL_UHS_SDR25 ;
 int SDHCI_CTRL_UHS_SDR50 ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_SPRD_CTRL_HS200 ;
 int SDHCI_SPRD_CTRL_HS400 ;
 int SDHCI_SPRD_REG_32_DLL_DLY ;
 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_sprd_set_uhs_signaling(struct sdhci_host *host,
      unsigned int timing)
{
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 struct mmc_host *mmc = host->mmc;
 u32 *p = sprd_host->phy_delay;
 u16 ctrl_2;

 if (timing == host->timing)
  return;

 ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);

 ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
 switch (timing) {
 case 130:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
  break;
 case 136:
 case 133:
 case 129:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
  break;
 case 128:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
  break;
 case 131:
  ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
  break;
 case 132:
 case 137:
  ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
  break;
 case 135:
  ctrl_2 |= SDHCI_SPRD_CTRL_HS200;
  break;
 case 134:
  ctrl_2 |= SDHCI_SPRD_CTRL_HS400;
  break;
 default:
  break;
 }

 sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);

 if (!mmc->ios.enhanced_strobe)
  sdhci_writel(host, p[timing], SDHCI_SPRD_REG_32_DLL_DLY);
}
