
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ov2685 {int xvclk; int supplies; TYPE_1__* cur_mode; TYPE_2__* client; int reset_gpio; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int reg_list; } ;


 int OV2685_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ov2685_cal_delay (int) ;
 int ov2685_write_array (TYPE_2__*,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __ov2685_power_on(struct ov2685 *ov2685)
{
 int ret;
 u32 delay_us;
 struct device *dev = &ov2685->client->dev;

 ret = clk_prepare_enable(ov2685->xvclk);
 if (ret < 0) {
  dev_err(dev, "Failed to enable xvclk\n");
  return ret;
 }

 gpiod_set_value_cansleep(ov2685->reset_gpio, 1);

 ret = regulator_bulk_enable(OV2685_NUM_SUPPLIES, ov2685->supplies);
 if (ret < 0) {
  dev_err(dev, "Failed to enable regulators\n");
  goto disable_clk;
 }


 gpiod_set_value_cansleep(ov2685->reset_gpio, 0);

 delay_us = ov2685_cal_delay(8192);
 usleep_range(delay_us, delay_us * 2);




 ret = ov2685_write_array(ov2685->client, ov2685->cur_mode->reg_list);
 if (ret)
  goto disable_supplies;

 return 0;

disable_supplies:
 regulator_bulk_disable(OV2685_NUM_SUPPLIES, ov2685->supplies);
disable_clk:
 clk_disable_unprepare(ov2685->xvclk);

 return ret;
}
