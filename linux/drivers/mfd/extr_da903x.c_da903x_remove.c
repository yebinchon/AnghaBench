
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct da903x_chip {int dummy; } ;


 int da903x_remove_subdevs (struct da903x_chip*) ;
 struct da903x_chip* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int da903x_remove(struct i2c_client *client)
{
 struct da903x_chip *chip = i2c_get_clientdata(client);

 da903x_remove_subdevs(chip);
 return 0;
}
