
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct da9150 {int core_qif; int dev; int regmap_irq_data; int irq; } ;


 struct da9150* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int da9150_remove(struct i2c_client *client)
{
 struct da9150 *da9150 = i2c_get_clientdata(client);

 regmap_del_irq_chip(da9150->irq, da9150->regmap_irq_data);
 mfd_remove_devices(da9150->dev);
 i2c_unregister_device(da9150->core_qif);

 return 0;
}
