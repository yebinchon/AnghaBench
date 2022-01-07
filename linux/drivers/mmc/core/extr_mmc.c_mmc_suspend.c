
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int _mmc_suspend (struct mmc_host*,int) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int mmc_suspend(struct mmc_host *host)
{
 int err;

 err = _mmc_suspend(host, 1);
 if (!err) {
  pm_runtime_disable(&host->card->dev);
  pm_runtime_set_suspended(&host->card->dev);
 }

 return err;
}
