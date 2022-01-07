
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9052_pdata {int (* init ) (struct da9052*) ;} ;
struct da9052 {int dev; int chip_id; int done; int auxadc_lock; } ;


 int ARRAY_SIZE (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int da9052_clear_fault_log (struct da9052*) ;
 int da9052_irq_exit (struct da9052*) ;
 int da9052_irq_init (struct da9052*) ;
 int da9052_subdev_info ;
 int da9052_tsi_subdev_info ;
 int dev_err (int ,char*,int) ;
 struct da9052_pdata* dev_get_platdata (int ) ;
 int dev_warn (int ,char*) ;
 int device_property_read_bool (int ,char*) ;
 int init_completion (int *) ;
 int mfd_add_devices (int ,int ,int ,int ,int *,int ,int *) ;
 int mfd_remove_devices (int ) ;
 int mutex_init (int *) ;
 int stub1 (struct da9052*) ;

int da9052_device_init(struct da9052 *da9052, u8 chip_id)
{
 struct da9052_pdata *pdata = dev_get_platdata(da9052->dev);
 int ret;

 mutex_init(&da9052->auxadc_lock);
 init_completion(&da9052->done);

 ret = da9052_clear_fault_log(da9052);
 if (ret < 0)
  dev_warn(da9052->dev, "Cannot clear FAULT_LOG\n");

 if (pdata && pdata->init != ((void*)0))
  pdata->init(da9052);

 da9052->chip_id = chip_id;

 ret = da9052_irq_init(da9052);
 if (ret != 0) {
  dev_err(da9052->dev, "da9052_irq_init failed: %d\n", ret);
  return ret;
 }

 ret = mfd_add_devices(da9052->dev, PLATFORM_DEVID_AUTO,
         da9052_subdev_info,
         ARRAY_SIZE(da9052_subdev_info), ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(da9052->dev, "mfd_add_devices failed: %d\n", ret);
  goto err;
 }






 if (!device_property_read_bool(da9052->dev, "dlg,tsi-as-adc")) {
  ret = mfd_add_devices(da9052->dev, PLATFORM_DEVID_AUTO,
          da9052_tsi_subdev_info,
          ARRAY_SIZE(da9052_tsi_subdev_info),
          ((void*)0), 0, ((void*)0));
  if (ret) {
   dev_err(da9052->dev, "failed to add TSI subdev: %d\n",
    ret);
   goto err;
  }
 }

 return 0;

err:
 mfd_remove_devices(da9052->dev);
 da9052_irq_exit(da9052);

 return ret;
}
