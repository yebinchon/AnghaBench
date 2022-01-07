
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power_mode; scalar_t__ vdd; scalar_t__ clock; } ;
struct mmc_host {TYPE_1__ ios; } ;


 scalar_t__ MMC_POWER_OFF ;
 int mmc_delay (int) ;
 int mmc_pwrseq_power_off (struct mmc_host*) ;
 int mmc_set_initial_state (struct mmc_host*) ;

void mmc_power_off(struct mmc_host *host)
{
 if (host->ios.power_mode == MMC_POWER_OFF)
  return;

 mmc_pwrseq_power_off(host);

 host->ios.clock = 0;
 host->ios.vdd = 0;

 host->ios.power_mode = MMC_POWER_OFF;

 mmc_set_initial_state(host);






 mmc_delay(1);
}
