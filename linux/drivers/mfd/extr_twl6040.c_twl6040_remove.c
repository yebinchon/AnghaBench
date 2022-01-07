
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {int supplies; int irq_data; int irq; scalar_t__ power_count; } ;
struct i2c_client {int dev; } ;


 int TWL6040_NUM_SUPPLIES ;
 struct twl6040* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int twl6040_power (struct twl6040*,int ) ;

__attribute__((used)) static int twl6040_remove(struct i2c_client *client)
{
 struct twl6040 *twl6040 = i2c_get_clientdata(client);

 if (twl6040->power_count)
  twl6040_power(twl6040, 0);

 regmap_del_irq_chip(twl6040->irq, twl6040->irq_data);

 mfd_remove_devices(&client->dev);

 regulator_bulk_disable(TWL6040_NUM_SUPPLIES, twl6040->supplies);

 return 0;
}
