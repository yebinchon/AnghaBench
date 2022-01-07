
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_mode; } ;
struct mmc_host {int caps2; int ocr_avail; TYPE_1__ ios; scalar_t__ rescan_disable; int f_min; int f_init; } ;


 int MMC_CAP2_NO_PRESCAN_POWERUP ;
 int MMC_POWER_UNDEFINED ;
 int _mmc_detect_change (struct mmc_host*,int ,int) ;
 int * freqs ;
 int max (int ,int ) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_gpiod_request_cd_irq (struct mmc_host*) ;
 int mmc_power_up (struct mmc_host*,int ) ;
 int mmc_release_host (struct mmc_host*) ;

void mmc_start_host(struct mmc_host *host)
{
 host->f_init = max(freqs[0], host->f_min);
 host->rescan_disable = 0;
 host->ios.power_mode = MMC_POWER_UNDEFINED;

 if (!(host->caps2 & MMC_CAP2_NO_PRESCAN_POWERUP)) {
  mmc_claim_host(host);
  mmc_power_up(host, host->ocr_avail);
  mmc_release_host(host);
 }

 mmc_gpiod_request_cd_irq(host);
 _mmc_detect_change(host, 0, 0);
}
