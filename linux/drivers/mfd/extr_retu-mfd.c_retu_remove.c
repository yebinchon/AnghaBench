
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retu_dev {int irq_data; int dev; } ;
struct i2c_client {int irq; } ;


 struct retu_dev* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int ) ;
 int * pm_power_off ;
 int regmap_del_irq_chip (int ,int ) ;
 struct retu_dev* retu_pm_power_off ;

__attribute__((used)) static int retu_remove(struct i2c_client *i2c)
{
 struct retu_dev *rdev = i2c_get_clientdata(i2c);

 if (retu_pm_power_off == rdev) {
  pm_power_off = ((void*)0);
  retu_pm_power_off = ((void*)0);
 }
 mfd_remove_devices(rdev->dev);
 regmap_del_irq_chip(i2c->irq, rdev->irq_data);

 return 0;
}
