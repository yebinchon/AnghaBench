
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps2; int card; } ;


 int MMC_CAP2_FULL_PWR_CYCLE ;
 int _mmc_resume (struct mmc_host*) ;
 int _mmc_suspend (struct mmc_host*,int) ;
 scalar_t__ mmc_can_poweroff_notify (int ) ;

__attribute__((used)) static int mmc_shutdown(struct mmc_host *host)
{
 int err = 0;





 if (mmc_can_poweroff_notify(host->card) &&
  !(host->caps2 & MMC_CAP2_FULL_PWR_CYCLE))
  err = _mmc_resume(host);

 if (!err)
  err = _mmc_suspend(host, 0);

 return err;
}
