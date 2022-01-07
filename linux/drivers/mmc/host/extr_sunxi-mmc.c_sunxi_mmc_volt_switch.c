
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_ios {int dummy; } ;
struct TYPE_4__ {scalar_t__ signal_voltage; } ;
struct TYPE_3__ {int vqmmc; } ;
struct mmc_host {TYPE_2__ ios; TYPE_1__ supply; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static int sunxi_mmc_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
{

 if (!IS_ERR(mmc->supply.vqmmc))
  return mmc_regulator_set_vqmmc(mmc, ios);


 if (mmc->ios.signal_voltage == MMC_SIGNAL_VOLTAGE_330)
  return 0;

 return -EINVAL;
}
