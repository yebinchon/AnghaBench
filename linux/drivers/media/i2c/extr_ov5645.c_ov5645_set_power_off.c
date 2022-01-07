
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5645 {int supplies; int xclk; int enable_gpio; int rst_gpio; } ;


 int OV5645_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void ov5645_set_power_off(struct ov5645 *ov5645)
{
 gpiod_set_value_cansleep(ov5645->rst_gpio, 1);
 gpiod_set_value_cansleep(ov5645->enable_gpio, 0);
 clk_disable_unprepare(ov5645->xclk);
 regulator_bulk_disable(OV5645_NUM_SUPPLIES, ov5645->supplies);
}
