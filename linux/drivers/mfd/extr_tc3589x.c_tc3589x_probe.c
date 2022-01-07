
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tc3589x_platform_data {int dummy; } ;
struct tc3589x {int num_gpio; TYPE_1__* dev; struct i2c_client* i2c; struct tc3589x_platform_data* pdata; int lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; int adapter; } ;
struct device_node {int dummy; } ;
typedef enum tc3589x_version { ____Placeholder_tc3589x_version } tc3589x_version ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct tc3589x_platform_data*) ;
 int PTR_ERR (struct tc3589x_platform_data*) ;







 int dev_err (TYPE_1__*,char*,...) ;
 struct tc3589x_platform_data* dev_get_platdata (TYPE_1__*) ;
 struct tc3589x* devm_kzalloc (TYPE_1__*,int,int ) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct tc3589x*) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct tc3589x*) ;
 int tc3589x_chip_init (struct tc3589x*) ;
 int tc3589x_device_init (struct tc3589x*) ;
 int tc3589x_irq ;
 int tc3589x_irq_init (struct tc3589x*,struct device_node*) ;
 struct tc3589x_platform_data* tc3589x_of_probe (TYPE_1__*,int*) ;

__attribute__((used)) static int tc3589x_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct device_node *np = i2c->dev.of_node;
 struct tc3589x_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct tc3589x *tc3589x;
 enum tc3589x_version version;
 int ret;

 if (!pdata) {
  pdata = tc3589x_of_probe(&i2c->dev, &version);
  if (IS_ERR(pdata)) {
   dev_err(&i2c->dev, "No platform data or DT found\n");
   return PTR_ERR(pdata);
  }
 } else {

  version = id->driver_data;
 }

 if (!i2c_check_functionality(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA
         | I2C_FUNC_SMBUS_I2C_BLOCK))
  return -EIO;

 tc3589x = devm_kzalloc(&i2c->dev, sizeof(struct tc3589x),
    GFP_KERNEL);
 if (!tc3589x)
  return -ENOMEM;

 mutex_init(&tc3589x->lock);

 tc3589x->dev = &i2c->dev;
 tc3589x->i2c = i2c;
 tc3589x->pdata = pdata;

 switch (version) {
 case 132:
 case 130:
 case 129:
  tc3589x->num_gpio = 20;
  break;
 case 134:
 case 133:
 case 131:
 case 128:
 default:
  tc3589x->num_gpio = 24;
  break;
 }

 i2c_set_clientdata(i2c, tc3589x);

 ret = tc3589x_chip_init(tc3589x);
 if (ret)
  return ret;

 ret = tc3589x_irq_init(tc3589x, np);
 if (ret)
  return ret;

 ret = request_threaded_irq(tc3589x->i2c->irq, ((void*)0), tc3589x_irq,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       "tc3589x", tc3589x);
 if (ret) {
  dev_err(tc3589x->dev, "failed to request IRQ: %d\n", ret);
  return ret;
 }

 ret = tc3589x_device_init(tc3589x);
 if (ret) {
  dev_err(tc3589x->dev, "failed to add child devices\n");
  return ret;
 }

 return 0;
}
