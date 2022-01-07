
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_usb_sdmmc {int ddr_mode; scalar_t__ host_removal; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dev_mutex; } ;
struct mmc_host {int dummy; } ;


 int ENOMEDIUM ;
 int MMC_SEND_TUNING_BLOCK ;
 struct rtsx_usb_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sd_tuning_rx (struct rtsx_usb_sdmmc*,int ) ;

__attribute__((used)) static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct rtsx_usb_sdmmc *host = mmc_priv(mmc);
 struct rtsx_ucr *ucr = host->ucr;
 int err = 0;

 if (host->host_removal)
  return -ENOMEDIUM;

 mutex_lock(&ucr->dev_mutex);

 if (!host->ddr_mode)
  err = sd_tuning_rx(host, MMC_SEND_TUNING_BLOCK);

 mutex_unlock(&ucr->dev_mutex);

 return err;
}
