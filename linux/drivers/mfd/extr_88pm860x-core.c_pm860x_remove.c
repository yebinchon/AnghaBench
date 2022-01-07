
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {scalar_t__ companion; int regmap_companion; } ;
struct i2c_client {int dummy; } ;


 struct pm860x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (scalar_t__) ;
 int pm860x_device_exit (struct pm860x_chip*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int pm860x_remove(struct i2c_client *client)
{
 struct pm860x_chip *chip = i2c_get_clientdata(client);

 pm860x_device_exit(chip);
 if (chip->companion) {
  regmap_exit(chip->regmap_companion);
  i2c_unregister_device(chip->companion);
 }
 return 0;
}
