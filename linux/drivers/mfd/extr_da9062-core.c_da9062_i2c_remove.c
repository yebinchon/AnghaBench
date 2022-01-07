
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; } ;
struct da9062 {int regmap_irq; int dev; } ;


 struct da9062* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int da9062_i2c_remove(struct i2c_client *i2c)
{
 struct da9062 *chip = i2c_get_clientdata(i2c);

 mfd_remove_devices(chip->dev);
 regmap_del_irq_chip(i2c->irq, chip->regmap_irq);

 return 0;
}
