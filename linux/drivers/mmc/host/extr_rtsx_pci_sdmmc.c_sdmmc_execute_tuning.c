
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtsx_pcr {int pcr_mutex; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; scalar_t__ eject; } ;
struct TYPE_2__ {int timing; } ;
struct mmc_host {TYPE_1__ ios; } ;


 int DDR50_RX_PHASE (struct rtsx_pcr*) ;
 int DDR50_TX_PHASE (struct rtsx_pcr*) ;
 int ENOMEDIUM ;



 int RTSX_SD_CARD ;
 int SDR104_TX_PHASE (struct rtsx_pcr*) ;
 int SDR50_TX_PHASE (struct rtsx_pcr*) ;
 struct realtek_pci_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtsx_pci_card_exclusive_check (struct rtsx_pcr*,int ) ;
 int rtsx_pci_start_run (struct rtsx_pcr*) ;
 int sd_change_phase (struct realtek_pci_sdmmc*,int ,int) ;
 int sd_tuning_rx (struct realtek_pci_sdmmc*,int ) ;

__attribute__((used)) static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct realtek_pci_sdmmc *host = mmc_priv(mmc);
 struct rtsx_pcr *pcr = host->pcr;
 int err = 0;

 if (host->eject)
  return -ENOMEDIUM;

 err = rtsx_pci_card_exclusive_check(host->pcr, RTSX_SD_CARD);
 if (err)
  return err;

 mutex_lock(&pcr->pcr_mutex);

 rtsx_pci_start_run(pcr);


 switch (mmc->ios.timing) {
 case 129:
  err = sd_change_phase(host, SDR104_TX_PHASE(pcr), 0);
  break;

 case 128:
  err = sd_change_phase(host, SDR50_TX_PHASE(pcr), 0);
  break;

 case 130:
  err = sd_change_phase(host, DDR50_TX_PHASE(pcr), 0);
  break;

 default:
  err = 0;
 }

 if (err)
  goto out;


 if ((mmc->ios.timing == 129) ||
   (mmc->ios.timing == 128))
  err = sd_tuning_rx(host, opcode);
 else if (mmc->ios.timing == 130)
  err = sd_change_phase(host, DDR50_RX_PHASE(pcr), 1);

out:
 mutex_unlock(&pcr->pcr_mutex);

 return err;
}
