
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov2685 {int supplies; int reset_gpio; int xvclk; } ;


 int OV2685_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ov2685_cal_delay (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void __ov2685_power_off(struct ov2685 *ov2685)
{

 u32 delay_us = ov2685_cal_delay(512);

 usleep_range(delay_us, delay_us * 2);
 clk_disable_unprepare(ov2685->xvclk);
 gpiod_set_value_cansleep(ov2685->reset_gpio, 1);
 regulator_bulk_disable(OV2685_NUM_SUPPLIES, ov2685->supplies);
}
