
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {scalar_t__ version; int flags; TYPE_1__* ops; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_4__ {int vqmmc; } ;
struct mmc_host {TYPE_2__ supply; } ;
struct TYPE_3__ {int (* voltage_switch ) (struct sdhci_host*) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int IS_ERR (int ) ;



 int SDHCI_CTRL_VDD_180 ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_SIGNALING_120 ;
 int SDHCI_SIGNALING_180 ;
 int SDHCI_SIGNALING_330 ;
 scalar_t__ SDHCI_SPEC_300 ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (struct mmc_host*,struct mmc_ios*) ;
 int pr_warn (char*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;
 int stub1 (struct sdhci_host*) ;
 int usleep_range (int,int) ;

int sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
          struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u16 ctrl;
 int ret;





 if (host->version < SDHCI_SPEC_300)
  return 0;

 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);

 switch (ios->signal_voltage) {
 case 128:
  if (!(host->flags & SDHCI_SIGNALING_330))
   return -EINVAL;

  ctrl &= ~SDHCI_CTRL_VDD_180;
  sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);

  if (!IS_ERR(mmc->supply.vqmmc)) {
   ret = mmc_regulator_set_vqmmc(mmc, ios);
   if (ret) {
    pr_warn("%s: Switching to 3.3V signalling voltage failed\n",
     mmc_hostname(mmc));
    return -EIO;
   }
  }

  usleep_range(5000, 5500);


  ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
  if (!(ctrl & SDHCI_CTRL_VDD_180))
   return 0;

  pr_warn("%s: 3.3V regulator output did not became stable\n",
   mmc_hostname(mmc));

  return -EAGAIN;
 case 129:
  if (!(host->flags & SDHCI_SIGNALING_180))
   return -EINVAL;
  if (!IS_ERR(mmc->supply.vqmmc)) {
   ret = mmc_regulator_set_vqmmc(mmc, ios);
   if (ret) {
    pr_warn("%s: Switching to 1.8V signalling voltage failed\n",
     mmc_hostname(mmc));
    return -EIO;
   }
  }





  ctrl |= SDHCI_CTRL_VDD_180;
  sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);


  if (host->ops->voltage_switch)
   host->ops->voltage_switch(host);


  ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
  if (ctrl & SDHCI_CTRL_VDD_180)
   return 0;

  pr_warn("%s: 1.8V regulator output did not became stable\n",
   mmc_hostname(mmc));

  return -EAGAIN;
 case 130:
  if (!(host->flags & SDHCI_SIGNALING_120))
   return -EINVAL;
  if (!IS_ERR(mmc->supply.vqmmc)) {
   ret = mmc_regulator_set_vqmmc(mmc, ios);
   if (ret) {
    pr_warn("%s: Switching to 1.2V signalling voltage failed\n",
     mmc_hostname(mmc));
    return -EIO;
   }
  }
  return 0;
 default:

  return 0;
 }
}
