
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m001 {scalar_t__ reset_gpio; scalar_t__ standby_gpio; int clk; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt9m001_power_on(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 int ret;

 ret = clk_prepare_enable(mt9m001->clk);
 if (ret)
  return ret;

 if (mt9m001->standby_gpio) {
  gpiod_set_value_cansleep(mt9m001->standby_gpio, 0);
  usleep_range(1000, 2000);
 }

 if (mt9m001->reset_gpio) {
  gpiod_set_value_cansleep(mt9m001->reset_gpio, 1);
  usleep_range(1000, 2000);
  gpiod_set_value_cansleep(mt9m001->reset_gpio, 0);
  usleep_range(1000, 2000);
 }

 return 0;
}
