
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {scalar_t__ base; int internal_cd; } ;
struct mmc_host {int caps; int caps2; } ;


 int MMC_CAP2_CD_ACTIVE_HIGH ;
 int MMC_CAP_NONREMOVABLE ;
 scalar_t__ MSDC_PS ;
 int MSDC_PS_CDSTS ;
 int mmc_gpio_get_cd (struct mmc_host*) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int msdc_get_cd(struct mmc_host *mmc)
{
 struct msdc_host *host = mmc_priv(mmc);
 int val;

 if (mmc->caps & MMC_CAP_NONREMOVABLE)
  return 1;

 if (!host->internal_cd)
  return mmc_gpio_get_cd(mmc);

 val = readl(host->base + MSDC_PS) & MSDC_PS_CDSTS;
 if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
  return !!val;
 else
  return !val;
}
