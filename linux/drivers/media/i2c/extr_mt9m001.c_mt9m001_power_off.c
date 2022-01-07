
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m001 {int clk; int standby_gpio; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;

__attribute__((used)) static int mt9m001_power_off(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct mt9m001 *mt9m001 = to_mt9m001(client);

 gpiod_set_value_cansleep(mt9m001->standby_gpio, 1);
 clk_disable_unprepare(mt9m001->clk);

 return 0;
}
