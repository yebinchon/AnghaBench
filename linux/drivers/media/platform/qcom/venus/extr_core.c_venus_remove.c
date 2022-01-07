
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int v4l2_dev; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int hfi_core_deinit (struct venus_core*,int) ;
 int hfi_destroy (struct venus_core*) ;
 int of_platform_depopulate (struct device*) ;
 struct venus_core* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int v4l2_device_unregister (int *) ;
 int venus_firmware_deinit (struct venus_core*) ;
 int venus_shutdown (struct venus_core*) ;

__attribute__((used)) static int venus_remove(struct platform_device *pdev)
{
 struct venus_core *core = platform_get_drvdata(pdev);
 struct device *dev = core->dev;
 int ret;

 ret = pm_runtime_get_sync(dev);
 WARN_ON(ret < 0);

 ret = hfi_core_deinit(core, 1);
 WARN_ON(ret);

 hfi_destroy(core);
 venus_shutdown(core);
 of_platform_depopulate(dev);

 venus_firmware_deinit(core);

 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 v4l2_device_unregister(&core->v4l2_dev);

 return ret;
}
