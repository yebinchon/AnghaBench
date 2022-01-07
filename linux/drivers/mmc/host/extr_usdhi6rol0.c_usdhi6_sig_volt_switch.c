
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;


 int dev_warn_once (int ,char*,int) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;
 int usdhi6_set_pinstates (int ,int ) ;

__attribute__((used)) static int usdhi6_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
{
 int ret;

 ret = mmc_regulator_set_vqmmc(mmc, ios);
 if (ret < 0)
  return ret;

 ret = usdhi6_set_pinstates(mmc_priv(mmc), ios->signal_voltage);
 if (ret)
  dev_warn_once(mmc_dev(mmc),
         "Failed to set pinstate err=%d\n", ret);
 return ret;
}
