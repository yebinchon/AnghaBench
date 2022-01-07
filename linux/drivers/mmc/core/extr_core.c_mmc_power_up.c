
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ power_mode; int power_delay_ms; int clock; scalar_t__ vdd; } ;
struct mmc_host {TYPE_1__ ios; int f_init; } ;


 scalar_t__ MMC_POWER_ON ;
 scalar_t__ MMC_POWER_UP ;
 scalar_t__ fls (int ) ;
 int mmc_delay (int ) ;
 int mmc_pwrseq_post_power_on (struct mmc_host*) ;
 int mmc_pwrseq_pre_power_on (struct mmc_host*) ;
 int mmc_set_initial_signal_voltage (struct mmc_host*) ;
 int mmc_set_initial_state (struct mmc_host*) ;
 int mmc_set_ios (struct mmc_host*) ;

void mmc_power_up(struct mmc_host *host, u32 ocr)
{
 if (host->ios.power_mode == MMC_POWER_ON)
  return;

 mmc_pwrseq_pre_power_on(host);

 host->ios.vdd = fls(ocr) - 1;
 host->ios.power_mode = MMC_POWER_UP;

 mmc_set_initial_state(host);

 mmc_set_initial_signal_voltage(host);





 mmc_delay(host->ios.power_delay_ms);

 mmc_pwrseq_post_power_on(host);

 host->ios.clock = host->f_init;

 host->ios.power_mode = MMC_POWER_ON;
 mmc_set_ios(host);





 mmc_delay(host->ios.power_delay_ms);
}
