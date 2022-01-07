
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {TYPE_2__* card; } ;
struct sdio_driver {int (* probe ) (struct sdio_func*,struct sdio_device_id const*) ;} ;
struct sdio_device_id {int dummy; } ;
struct device {int driver; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int ENODEV ;
 int MMC_CAP_POWER_OFF_CARD ;
 int dev_pm_domain_attach (struct device*,int) ;
 int dev_pm_domain_detach (struct device*,int) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int sdio_claim_host (struct sdio_func*) ;
 struct sdio_device_id* sdio_match_device (struct sdio_func*,struct sdio_driver*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int stub1 (struct sdio_func*,struct sdio_device_id const*) ;
 struct sdio_driver* to_sdio_driver (int ) ;

__attribute__((used)) static int sdio_bus_probe(struct device *dev)
{
 struct sdio_driver *drv = to_sdio_driver(dev->driver);
 struct sdio_func *func = dev_to_sdio_func(dev);
 const struct sdio_device_id *id;
 int ret;

 id = sdio_match_device(func, drv);
 if (!id)
  return -ENODEV;

 ret = dev_pm_domain_attach(dev, 0);
 if (ret)
  return ret;







 if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD) {
  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   goto disable_runtimepm;
 }



 sdio_claim_host(func);
 ret = sdio_set_block_size(func, 0);
 sdio_release_host(func);
 if (ret)
  goto disable_runtimepm;

 ret = drv->probe(func, id);
 if (ret)
  goto disable_runtimepm;

 return 0;

disable_runtimepm:
 if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_put_noidle(dev);
 dev_pm_domain_detach(dev, 0);
 return ret;
}
