
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ clock; } ;
struct mmc_host {TYPE_1__ ios; } ;


 int EAGAIN ;
 int MMC_SIGNAL_VOLTAGE_180 ;
 int mmc_delay (int) ;
 int mmc_set_ios (struct mmc_host*) ;
 scalar_t__ mmc_set_signal_voltage (struct mmc_host*,int ) ;

int mmc_host_set_uhs_voltage(struct mmc_host *host)
{
 u32 clock;





 clock = host->ios.clock;
 host->ios.clock = 0;
 mmc_set_ios(host);

 if (mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_180))
  return -EAGAIN;


 mmc_delay(10);
 host->ios.clock = clock;
 mmc_set_ios(host);

 return 0;
}
