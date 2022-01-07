
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct si476x_core {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct si476x_core* i2c_get_clientdata (struct i2c_client*) ;
 int si476x_core_is_valid_property (struct si476x_core*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static bool si476x_core_regmap_readable_register(struct device *dev,
       unsigned int reg)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct si476x_core *core = i2c_get_clientdata(client);

 return si476x_core_is_valid_property(core, (u16) reg);

}
