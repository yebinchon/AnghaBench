
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {scalar_t__ signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static int meson_mmc_voltage_switch(struct mmc_host *mmc, struct mmc_ios *ios)
{

 if (!IS_ERR(mmc->supply.vqmmc)) {







  return mmc_regulator_set_vqmmc(mmc, ios);
 }


 if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330)
  return 0;

 return -EINVAL;
}
