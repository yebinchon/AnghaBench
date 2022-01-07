
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ksz_device {int interface; struct ksz_dev_ops const* dev_ops; int ds; TYPE_2__* dev; int synclko_125; int vlan_mutex; int alu_mutex; int regmap_mutex; int dev_mutex; scalar_t__ reset_gpio; TYPE_1__* pdata; int chip_id; } ;
struct ksz_dev_ops {int (* init ) (struct ksz_device*) ;int (* exit ) (struct ksz_device*) ;scalar_t__ (* detect ) (struct ksz_device*) ;} ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct TYPE_3__ {int chip_id; } ;


 int EINVAL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ devm_gpiod_get_optional (TYPE_2__*,char*,int ) ;
 int dsa_register_switch (int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mdelay (int) ;
 int mutex_init (int *) ;
 int of_get_phy_mode (scalar_t__) ;
 int of_property_read_bool (scalar_t__,char*) ;
 scalar_t__ stub1 (struct ksz_device*) ;
 int stub2 (struct ksz_device*) ;
 int stub3 (struct ksz_device*) ;

int ksz_switch_register(struct ksz_device *dev,
   const struct ksz_dev_ops *ops)
{
 int ret;

 if (dev->pdata)
  dev->chip_id = dev->pdata->chip_id;

 dev->reset_gpio = devm_gpiod_get_optional(dev->dev, "reset",
        GPIOD_OUT_LOW);
 if (IS_ERR(dev->reset_gpio))
  return PTR_ERR(dev->reset_gpio);

 if (dev->reset_gpio) {
  gpiod_set_value_cansleep(dev->reset_gpio, 1);
  mdelay(10);
  gpiod_set_value_cansleep(dev->reset_gpio, 0);
 }

 mutex_init(&dev->dev_mutex);
 mutex_init(&dev->regmap_mutex);
 mutex_init(&dev->alu_mutex);
 mutex_init(&dev->vlan_mutex);

 dev->dev_ops = ops;

 if (dev->dev_ops->detect(dev))
  return -EINVAL;

 ret = dev->dev_ops->init(dev);
 if (ret)
  return ret;




 if (dev->dev->of_node) {
  ret = of_get_phy_mode(dev->dev->of_node);
  if (ret >= 0)
   dev->interface = ret;
  dev->synclko_125 = of_property_read_bool(dev->dev->of_node,
        "microchip,synclko-125");
 }

 ret = dsa_register_switch(dev->ds);
 if (ret) {
  dev->dev_ops->exit(dev);
  return ret;
 }

 return 0;
}
