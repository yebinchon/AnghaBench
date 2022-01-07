
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5695 {int supplies; int reset_gpio; int xvclk; } ;


 int OV5695_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void __ov5695_power_off(struct ov5695 *ov5695)
{
 clk_disable_unprepare(ov5695->xvclk);
 gpiod_set_value_cansleep(ov5695->reset_gpio, 1);
 regulator_bulk_disable(OV5695_NUM_SUPPLIES, ov5695->supplies);
}
