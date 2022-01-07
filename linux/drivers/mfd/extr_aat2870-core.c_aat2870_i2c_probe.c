
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct aat2870_platform_data {int en_pin; int num_subdevs; TYPE_1__* subdevs; int uninit; int (* init ) (struct aat2870_data*) ;} ;
struct aat2870_data {int en_pin; int * dev; int (* init ) (struct aat2870_data*) ;int io_lock; int update; int write; int read; int uninit; int reg_cache; struct i2c_client* client; } ;
struct TYPE_6__ {scalar_t__ id; int platform_data; int name; } ;
struct TYPE_5__ {scalar_t__ id; int platform_data; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 TYPE_2__* aat2870_devs ;
 int aat2870_disable (struct aat2870_data*) ;
 int aat2870_enable (struct aat2870_data*) ;
 int aat2870_init_debugfs (struct aat2870_data*) ;
 int aat2870_read ;
 int aat2870_regs ;
 int aat2870_update ;
 int aat2870_write ;
 int dev_err (int *,char*,int) ;
 struct aat2870_platform_data* dev_get_platdata (int *) ;
 int dev_set_drvdata (int *,struct aat2870_data*) ;
 int devm_gpio_request_one (int *,int,int ,char*) ;
 struct aat2870_data* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct aat2870_data*) ;
 int mfd_add_devices (int *,int ,TYPE_2__*,int,int *,int ,int *) ;
 int mutex_init (int *) ;
 int strcmp (int ,int ) ;
 int stub1 (struct aat2870_data*) ;

__attribute__((used)) static int aat2870_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct aat2870_platform_data *pdata = dev_get_platdata(&client->dev);
 struct aat2870_data *aat2870;
 int i, j;
 int ret = 0;

 aat2870 = devm_kzalloc(&client->dev, sizeof(struct aat2870_data),
    GFP_KERNEL);
 if (!aat2870)
  return -ENOMEM;

 aat2870->dev = &client->dev;
 dev_set_drvdata(aat2870->dev, aat2870);

 aat2870->client = client;
 i2c_set_clientdata(client, aat2870);

 aat2870->reg_cache = aat2870_regs;

 if (pdata->en_pin < 0)
  aat2870->en_pin = -1;
 else
  aat2870->en_pin = pdata->en_pin;

 aat2870->init = pdata->init;
 aat2870->uninit = pdata->uninit;
 aat2870->read = aat2870_read;
 aat2870->write = aat2870_write;
 aat2870->update = aat2870_update;

 mutex_init(&aat2870->io_lock);

 if (aat2870->init)
  aat2870->init(aat2870);

 if (aat2870->en_pin >= 0) {
  ret = devm_gpio_request_one(&client->dev, aat2870->en_pin,
     GPIOF_OUT_INIT_HIGH, "aat2870-en");
  if (ret < 0) {
   dev_err(&client->dev,
    "Failed to request GPIO %d\n", aat2870->en_pin);
   return ret;
  }
 }

 aat2870_enable(aat2870);

 for (i = 0; i < pdata->num_subdevs; i++) {
  for (j = 0; j < ARRAY_SIZE(aat2870_devs); j++) {
   if ((pdata->subdevs[i].id == aat2870_devs[j].id) &&
     !strcmp(pdata->subdevs[i].name,
      aat2870_devs[j].name)) {
    aat2870_devs[j].platform_data =
     pdata->subdevs[i].platform_data;
    break;
   }
  }
 }

 ret = mfd_add_devices(aat2870->dev, 0, aat2870_devs,
         ARRAY_SIZE(aat2870_devs), ((void*)0), 0, ((void*)0));
 if (ret != 0) {
  dev_err(aat2870->dev, "Failed to add subdev: %d\n", ret);
  goto out_disable;
 }

 aat2870_init_debugfs(aat2870);

 return 0;

out_disable:
 aat2870_disable(aat2870);
 return ret;
}
