
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_usb_sdmmc {unsigned char power_mode; } ;


 unsigned char MMC_POWER_OFF ;
 unsigned char MMC_POWER_ON ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int sd_power_off (struct rtsx_usb_sdmmc*) ;
 int sd_power_on (struct rtsx_usb_sdmmc*) ;
 int sdmmc_dev (struct rtsx_usb_sdmmc*) ;

__attribute__((used)) static int sd_set_power_mode(struct rtsx_usb_sdmmc *host,
  unsigned char power_mode)
{
 int err;

 if (power_mode != MMC_POWER_OFF)
  power_mode = MMC_POWER_ON;

 if (power_mode == host->power_mode)
  return 0;

 if (power_mode == MMC_POWER_OFF) {
  err = sd_power_off(host);
  pm_runtime_put_noidle(sdmmc_dev(host));
 } else {
  pm_runtime_get_noresume(sdmmc_dev(host));
  err = sd_power_on(host);
 }

 if (!err)
  host->power_mode = power_mode;

 return err;
}
