
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* driver; } ;
struct sdio_func {TYPE_2__ dev; } ;
struct mmc_host {TYPE_3__* card; } ;
struct dev_pm_ops {int resume; int suspend; } ;
struct TYPE_6__ {int sdio_funcs; struct sdio_func** sdio_func; } ;
struct TYPE_4__ {struct dev_pm_ops* pm; } ;


 int ENOSYS ;
 scalar_t__ sdio_func_present (struct sdio_func*) ;

__attribute__((used)) static int mmc_sdio_pre_suspend(struct mmc_host *host)
{
 int i, err = 0;

 for (i = 0; i < host->card->sdio_funcs; i++) {
  struct sdio_func *func = host->card->sdio_func[i];
  if (func && sdio_func_present(func) && func->dev.driver) {
   const struct dev_pm_ops *pmops = func->dev.driver->pm;
   if (!pmops || !pmops->suspend || !pmops->resume) {

    err = -ENOSYS;
    break;
   }
  }
 }

 return err;
}
