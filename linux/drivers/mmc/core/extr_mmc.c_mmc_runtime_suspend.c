
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; } ;


 int MMC_CAP_AGGRESSIVE_PM ;
 int _mmc_suspend (struct mmc_host*,int) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int mmc_runtime_suspend(struct mmc_host *host)
{
 int err;

 if (!(host->caps & MMC_CAP_AGGRESSIVE_PM))
  return 0;

 err = _mmc_suspend(host, 1);
 if (err)
  pr_err("%s: error %d doing aggressive suspend\n",
   mmc_hostname(host), err);

 return err;
}
