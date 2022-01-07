
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdc_host {int pins_default; int pinctrl; int pins_uhs; int dev; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int MMC_SIGNAL_VOLTAGE_180 ;
 int MMC_SIGNAL_VOLTAGE_330 ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;
 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static int msdc_ops_switch_volt(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct msdc_host *host = mmc_priv(mmc);
 int ret = 0;

 if (!IS_ERR(mmc->supply.vqmmc)) {
  if (ios->signal_voltage != MMC_SIGNAL_VOLTAGE_330 &&
      ios->signal_voltage != MMC_SIGNAL_VOLTAGE_180) {
   dev_err(host->dev, "Unsupported signal voltage!\n");
   return -EINVAL;
  }

  ret = mmc_regulator_set_vqmmc(mmc, ios);
  if (ret) {
   dev_dbg(host->dev, "Regulator set error %d (%d)\n",
    ret, ios->signal_voltage);
  } else {

   if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180)
    pinctrl_select_state(host->pinctrl, host->pins_uhs);
   else
    pinctrl_select_state(host->pinctrl, host->pins_default);
  }
 }
 return ret;
}
