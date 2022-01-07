
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5645 {int rst_gpio; int enable_gpio; int supplies; int dev; int xclk; } ;


 int OV5645_NUM_SUPPLIES ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov5645_set_power_on(struct ov5645 *ov5645)
{
 int ret;

 ret = regulator_bulk_enable(OV5645_NUM_SUPPLIES, ov5645->supplies);
 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(ov5645->xclk);
 if (ret < 0) {
  dev_err(ov5645->dev, "clk prepare enable failed\n");
  regulator_bulk_disable(OV5645_NUM_SUPPLIES, ov5645->supplies);
  return ret;
 }

 usleep_range(5000, 15000);
 gpiod_set_value_cansleep(ov5645->enable_gpio, 1);

 usleep_range(1000, 2000);
 gpiod_set_value_cansleep(ov5645->rst_gpio, 0);

 msleep(20);

 return 0;
}
