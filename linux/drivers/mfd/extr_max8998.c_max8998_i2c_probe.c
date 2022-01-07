
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ of_node; } ;
struct max8998_platform_data {TYPE_1__ dev; int adapter; int wakeup; int irq_base; int ono; int irq; } ;
struct max8998_dev {int type; struct max8998_platform_data* rtc; TYPE_1__* dev; int wakeup; int iolock; int irq_base; int ono; struct max8998_platform_data* pdata; int irq; struct max8998_platform_data* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {TYPE_1__ dev; int adapter; int wakeup; int irq_base; int ono; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct max8998_platform_data*) ;
 int PTR_ERR (struct max8998_platform_data*) ;
 int RTC_I2C_ADDR ;


 int dev_err (TYPE_1__*,char*) ;
 struct max8998_platform_data* dev_get_platdata (TYPE_1__*) ;
 int device_init_wakeup (TYPE_1__*,int ) ;
 struct max8998_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct max8998_platform_data* i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (struct max8998_platform_data*,struct max8998_dev*) ;
 int i2c_unregister_device (struct max8998_platform_data*) ;
 int lp3974_devs ;
 int max8998_devs ;
 int max8998_i2c_get_driver_data (struct max8998_platform_data*,struct i2c_device_id const*) ;
 struct max8998_platform_data* max8998_i2c_parse_dt_pdata (TYPE_1__*) ;
 int max8998_irq_exit (struct max8998_dev*) ;
 int max8998_irq_init (struct max8998_dev*) ;
 int mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int *) ;
 int mfd_remove_devices (TYPE_1__*) ;
 int mutex_init (int *) ;
 int pm_runtime_set_active (TYPE_1__*) ;

__attribute__((used)) static int max8998_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct max8998_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct max8998_dev *max8998;
 int ret = 0;

 max8998 = devm_kzalloc(&i2c->dev, sizeof(struct max8998_dev),
    GFP_KERNEL);
 if (max8998 == ((void*)0))
  return -ENOMEM;

 if (IS_ENABLED(CONFIG_OF) && i2c->dev.of_node) {
  pdata = max8998_i2c_parse_dt_pdata(&i2c->dev);
  if (IS_ERR(pdata))
   return PTR_ERR(pdata);
 }

 i2c_set_clientdata(i2c, max8998);
 max8998->dev = &i2c->dev;
 max8998->i2c = i2c;
 max8998->irq = i2c->irq;
 max8998->type = max8998_i2c_get_driver_data(i2c, id);
 max8998->pdata = pdata;
 if (pdata) {
  max8998->ono = pdata->ono;
  max8998->irq_base = pdata->irq_base;
  max8998->wakeup = pdata->wakeup;
 }
 mutex_init(&max8998->iolock);

 max8998->rtc = i2c_new_dummy_device(i2c->adapter, RTC_I2C_ADDR);
 if (IS_ERR(max8998->rtc)) {
  dev_err(&i2c->dev, "Failed to allocate I2C device for RTC\n");
  return PTR_ERR(max8998->rtc);
 }
 i2c_set_clientdata(max8998->rtc, max8998);

 max8998_irq_init(max8998);

 pm_runtime_set_active(max8998->dev);

 switch (max8998->type) {
 case 129:
  ret = mfd_add_devices(max8998->dev, -1,
          lp3974_devs, ARRAY_SIZE(lp3974_devs),
          ((void*)0), 0, ((void*)0));
  break;
 case 128:
  ret = mfd_add_devices(max8998->dev, -1,
          max8998_devs, ARRAY_SIZE(max8998_devs),
          ((void*)0), 0, ((void*)0));
  break;
 default:
  ret = -EINVAL;
 }

 if (ret < 0)
  goto err;

 device_init_wakeup(max8998->dev, max8998->wakeup);

 return ret;

err:
 mfd_remove_devices(max8998->dev);
 max8998_irq_exit(max8998);
 i2c_unregister_device(max8998->rtc);
 return ret;
}
