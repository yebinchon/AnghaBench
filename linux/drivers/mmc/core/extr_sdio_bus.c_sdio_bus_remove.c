
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; scalar_t__ irq_handler; } ;
struct sdio_driver {int name; int (* remove ) (struct sdio_func*) ;} ;
struct device {int driver; } ;
struct TYPE_4__ {int caps; } ;
struct TYPE_3__ {TYPE_2__* host; } ;


 int MMC_CAP_POWER_OFF_CARD ;
 int dev_pm_domain_detach (struct device*,int) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pr_warn (char*,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int stub1 (struct sdio_func*) ;
 struct sdio_driver* to_sdio_driver (int ) ;

__attribute__((used)) static int sdio_bus_remove(struct device *dev)
{
 struct sdio_driver *drv = to_sdio_driver(dev->driver);
 struct sdio_func *func = dev_to_sdio_func(dev);


 if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_get_sync(dev);

 drv->remove(func);

 if (func->irq_handler) {
  pr_warn("WARNING: driver %s did not remove its interrupt handler!\n",
   drv->name);
  sdio_claim_host(func);
  sdio_release_irq(func);
  sdio_release_host(func);
 }


 if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_put_noidle(dev);


 if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_put_sync(dev);

 dev_pm_domain_detach(dev, 0);

 return 0;
}
