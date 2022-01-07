
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_usb_sdmmc {scalar_t__ host_removal; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dev_mutex; } ;
struct mmc_host {int dummy; } ;


 int ENOMEDIUM ;
 int SD_WP ;
 struct rtsx_usb_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtsx_usb_get_card_status (struct rtsx_ucr*,int*) ;

__attribute__((used)) static int sdmmc_get_ro(struct mmc_host *mmc)
{
 struct rtsx_usb_sdmmc *host = mmc_priv(mmc);
 struct rtsx_ucr *ucr = host->ucr;
 int err;
 u16 val;

 if (host->host_removal)
  return -ENOMEDIUM;

 mutex_lock(&ucr->dev_mutex);


 err = rtsx_usb_get_card_status(ucr, &val);

 mutex_unlock(&ucr->dev_mutex);



 if (err)
  return 0;

 if (val & SD_WP)
  return 1;

 return 0;
}
