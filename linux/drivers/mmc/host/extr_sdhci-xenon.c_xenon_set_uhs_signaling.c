
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 unsigned int MMC_TIMING_MMC_DDR52 ;
 unsigned int MMC_TIMING_MMC_HS200 ;
 unsigned int MMC_TIMING_MMC_HS400 ;
 unsigned int MMC_TIMING_UHS_DDR50 ;
 unsigned int MMC_TIMING_UHS_SDR104 ;
 unsigned int MMC_TIMING_UHS_SDR12 ;
 unsigned int MMC_TIMING_UHS_SDR25 ;
 unsigned int MMC_TIMING_UHS_SDR50 ;
 int SDHCI_CTRL_UHS_DDR50 ;
 int SDHCI_CTRL_UHS_MASK ;
 int SDHCI_CTRL_UHS_SDR104 ;
 int SDHCI_CTRL_UHS_SDR12 ;
 int SDHCI_CTRL_UHS_SDR25 ;
 int SDHCI_CTRL_UHS_SDR50 ;
 int SDHCI_HOST_CONTROL2 ;
 int XENON_CTRL_HS200 ;
 int XENON_CTRL_HS400 ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void xenon_set_uhs_signaling(struct sdhci_host *host,
        unsigned int timing)
{
 u16 ctrl_2;

 ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);

 ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
 if (timing == MMC_TIMING_MMC_HS200)
  ctrl_2 |= XENON_CTRL_HS200;
 else if (timing == MMC_TIMING_UHS_SDR104)
  ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
 else if (timing == MMC_TIMING_UHS_SDR12)
  ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
 else if (timing == MMC_TIMING_UHS_SDR25)
  ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
 else if (timing == MMC_TIMING_UHS_SDR50)
  ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
 else if ((timing == MMC_TIMING_UHS_DDR50) ||
   (timing == MMC_TIMING_MMC_DDR52))
  ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
 else if (timing == MMC_TIMING_MMC_HS400)
  ctrl_2 |= XENON_CTRL_HS400;
 sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
}
