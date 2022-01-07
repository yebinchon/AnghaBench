
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ov5695 {int xvclk; int reset_gpio; int supplies; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int OV5695_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ov5695_cal_delay (int) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __ov5695_power_on(struct ov5695 *ov5695)
{
 int ret;
 u32 delay_us;
 struct device *dev = &ov5695->client->dev;

 ret = clk_prepare_enable(ov5695->xvclk);
 if (ret < 0) {
  dev_err(dev, "Failed to enable xvclk\n");
  return ret;
 }

 gpiod_set_value_cansleep(ov5695->reset_gpio, 1);

 ret = regulator_bulk_enable(OV5695_NUM_SUPPLIES, ov5695->supplies);
 if (ret < 0) {
  dev_err(dev, "Failed to enable regulators\n");
  goto disable_clk;
 }

 gpiod_set_value_cansleep(ov5695->reset_gpio, 0);


 delay_us = ov5695_cal_delay(8192);
 usleep_range(delay_us, delay_us * 2);

 return 0;

disable_clk:
 clk_disable_unprepare(ov5695->xvclk);

 return ret;
}
