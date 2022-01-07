
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct fimc_md {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int owner; } ;


 int ENODEV ;
 int EPROBE_DEFER ;




 int dev_err (int *,char*,int ,int) ;
 void* dev_get_drvdata (struct device*) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (struct device*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int module_put (int ) ;
 int register_csis_entity (struct fimc_md*,struct platform_device*,void*) ;
 int register_fimc_entity (struct fimc_md*,void*) ;
 int register_fimc_is_entity (struct fimc_md*,void*) ;
 int register_fimc_lite_entity (struct fimc_md*,void*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int fimc_md_register_platform_entity(struct fimc_md *fmd,
         struct platform_device *pdev,
         int plat_entity)
{
 struct device *dev = &pdev->dev;
 int ret = -EPROBE_DEFER;
 void *drvdata;


 device_lock(dev);

 if (!dev->driver || !try_module_get(dev->driver->owner))
  goto dev_unlock;

 drvdata = dev_get_drvdata(dev);

 if (drvdata) {
  switch (plat_entity) {
  case 130:
   ret = register_fimc_entity(fmd, drvdata);
   break;
  case 129:
   ret = register_fimc_lite_entity(fmd, drvdata);
   break;
  case 131:
   ret = register_csis_entity(fmd, pdev, drvdata);
   break;
  case 128:
   ret = register_fimc_is_entity(fmd, drvdata);
   break;
  default:
   ret = -ENODEV;
  }
 }

 module_put(dev->driver->owner);
dev_unlock:
 device_unlock(dev);
 if (ret == -EPROBE_DEFER)
  dev_info(&fmd->pdev->dev, "deferring %s device registration\n",
   dev_name(dev));
 else if (ret < 0)
  dev_err(&fmd->pdev->dev, "%s device registration failed (%d)\n",
   dev_name(dev), ret);
 return ret;
}
