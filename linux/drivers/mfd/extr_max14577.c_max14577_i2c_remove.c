
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577 {scalar_t__ dev_type; int irq_data; int irq; int dev; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ MAXIM_DEVICE_TYPE_MAX77836 ;
 struct max14577* i2c_get_clientdata (struct i2c_client*) ;
 int max77836_remove (struct max14577*) ;
 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max14577_i2c_remove(struct i2c_client *i2c)
{
 struct max14577 *max14577 = i2c_get_clientdata(i2c);

 mfd_remove_devices(max14577->dev);
 regmap_del_irq_chip(max14577->irq, max14577->irq_data);
 if (max14577->dev_type == MAXIM_DEVICE_TYPE_MAX77836)
  max77836_remove(max14577);

 return 0;
}
