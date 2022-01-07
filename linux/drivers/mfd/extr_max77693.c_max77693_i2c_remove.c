
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_dev {int i2c_haptic; int i2c_muic; int irq_data_led; int irq; int irq_data_topsys; int irq_data_chg; int irq_data_muic; int dev; } ;
struct i2c_client {int dummy; } ;


 struct max77693_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max77693_i2c_remove(struct i2c_client *i2c)
{
 struct max77693_dev *max77693 = i2c_get_clientdata(i2c);

 mfd_remove_devices(max77693->dev);

 regmap_del_irq_chip(max77693->irq, max77693->irq_data_muic);
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_chg);
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_topsys);
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_led);

 i2c_unregister_device(max77693->i2c_muic);
 i2c_unregister_device(max77693->i2c_haptic);

 return 0;
}
