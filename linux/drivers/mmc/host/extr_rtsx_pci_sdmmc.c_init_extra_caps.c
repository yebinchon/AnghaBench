
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int extra_caps; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; struct mmc_host* mmc; } ;
struct mmc_host {int caps; } ;


 int EXTRA_CAPS_MMC_8BIT ;
 int EXTRA_CAPS_MMC_HSDDR ;
 int EXTRA_CAPS_SD_DDR50 ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 int MMC_CAP_1_8V_DDR ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR50 ;
 int dev_dbg (int ,char*,int) ;
 int sdmmc_dev (struct realtek_pci_sdmmc*) ;

__attribute__((used)) static void init_extra_caps(struct realtek_pci_sdmmc *host)
{
 struct mmc_host *mmc = host->mmc;
 struct rtsx_pcr *pcr = host->pcr;

 dev_dbg(sdmmc_dev(host), "pcr->extra_caps = 0x%x\n", pcr->extra_caps);

 if (pcr->extra_caps & EXTRA_CAPS_SD_SDR50)
  mmc->caps |= MMC_CAP_UHS_SDR50;
 if (pcr->extra_caps & EXTRA_CAPS_SD_SDR104)
  mmc->caps |= MMC_CAP_UHS_SDR104;
 if (pcr->extra_caps & EXTRA_CAPS_SD_DDR50)
  mmc->caps |= MMC_CAP_UHS_DDR50;
 if (pcr->extra_caps & EXTRA_CAPS_MMC_HSDDR)
  mmc->caps |= MMC_CAP_1_8V_DDR;
 if (pcr->extra_caps & EXTRA_CAPS_MMC_8BIT)
  mmc->caps |= MMC_CAP_8_BIT_DATA;
}
