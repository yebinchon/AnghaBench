
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct retu_dev {int irq_data; int * dev; int regmap; int mutex; } ;
struct retu_data {char* companion_name; int nchildren; int children; TYPE_1__* irq_chip; int chip_name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int irq; int dev; } ;
struct TYPE_2__ {int mask_base; } ;


 int ARRAY_SIZE (struct retu_data*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RETU_REG_ASICR ;
 int RETU_REG_ASICR_VILMA ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ,char*,char*,int,int) ;
 struct retu_dev* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init (int *,int *,int *,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct retu_dev*) ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int mutex_init (int *) ;
 scalar_t__ pm_power_off ;
 int regmap_add_irq_chip (int ,int ,int ,int,TYPE_1__*,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_chip_get_base (int ) ;
 int retu_bus ;
 int retu_config ;
 struct retu_data* retu_data ;
 struct retu_dev* retu_pm_power_off ;
 scalar_t__ retu_power_off ;
 int retu_read (struct retu_dev*,int ) ;
 int retu_write (struct retu_dev*,int ,int) ;

__attribute__((used)) static int retu_probe(struct i2c_client *i2c, const struct i2c_device_id *id)
{
 struct retu_data const *rdat;
 struct retu_dev *rdev;
 int ret;

 if (i2c->addr > ARRAY_SIZE(retu_data))
  return -ENODEV;
 rdat = &retu_data[i2c->addr - 1];

 rdev = devm_kzalloc(&i2c->dev, sizeof(*rdev), GFP_KERNEL);
 if (rdev == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rdev);
 rdev->dev = &i2c->dev;
 mutex_init(&rdev->mutex);
 rdev->regmap = devm_regmap_init(&i2c->dev, &retu_bus, &i2c->dev,
     &retu_config);
 if (IS_ERR(rdev->regmap))
  return PTR_ERR(rdev->regmap);

 ret = retu_read(rdev, RETU_REG_ASICR);
 if (ret < 0) {
  dev_err(rdev->dev, "could not read %s revision: %d\n",
   rdat->chip_name, ret);
  return ret;
 }

 dev_info(rdev->dev, "%s%s%s v%d.%d found\n", rdat->chip_name,
   (ret & RETU_REG_ASICR_VILMA) ? " & " : "",
   (ret & RETU_REG_ASICR_VILMA) ? rdat->companion_name : "",
   (ret >> 4) & 0x7, ret & 0xf);


 ret = retu_write(rdev, rdat->irq_chip->mask_base, 0xffff);
 if (ret < 0)
  return ret;

 ret = regmap_add_irq_chip(rdev->regmap, i2c->irq, IRQF_ONESHOT, -1,
      rdat->irq_chip, &rdev->irq_data);
 if (ret < 0)
  return ret;

 ret = mfd_add_devices(rdev->dev, -1, rdat->children, rdat->nchildren,
         ((void*)0), regmap_irq_chip_get_base(rdev->irq_data),
         ((void*)0));
 if (ret < 0) {
  regmap_del_irq_chip(i2c->irq, rdev->irq_data);
  return ret;
 }

 if (i2c->addr == 1 && !pm_power_off) {
  retu_pm_power_off = rdev;
  pm_power_off = retu_power_off;
 }

 return 0;
}
