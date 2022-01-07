
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6105x {int regmap; } ;
struct i2c_client {int dev; } ;


 int TPS6105X_MODE_SHUTDOWN ;
 int TPS6105X_REG0_MODE_MASK ;
 int TPS6105X_REG0_MODE_SHIFT ;
 int TPS6105X_REG_0 ;
 struct tps6105x* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int tps6105x_remove(struct i2c_client *client)
{
 struct tps6105x *tps6105x = i2c_get_clientdata(client);

 mfd_remove_devices(&client->dev);


 regmap_update_bits(tps6105x->regmap, TPS6105X_REG_0,
  TPS6105X_REG0_MODE_MASK,
  TPS6105X_MODE_SHUTDOWN << TPS6105X_REG0_MODE_SHIFT);

 return 0;
}
