
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {int signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;



 int dev_warn (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 int regulator_set_voltage (int ,int,int) ;

__attribute__((used)) static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
{
 int ret = 0;

 if (!IS_ERR(mmc->supply.vqmmc)) {

  switch (ios->signal_voltage) {
  case 128:
   ret = regulator_set_voltage(mmc->supply.vqmmc,
      2700000, 3600000);
   break;
  case 129:
   ret = regulator_set_voltage(mmc->supply.vqmmc,
      1700000, 1950000);
   break;
  case 130:
   ret = regulator_set_voltage(mmc->supply.vqmmc,
      1100000, 1300000);
   break;
  }

  if (ret)
   dev_warn(mmc_dev(mmc), "Voltage switch failed\n");
 }

 return ret;
}
