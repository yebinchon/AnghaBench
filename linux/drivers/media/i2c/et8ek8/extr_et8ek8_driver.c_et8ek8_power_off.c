
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et8ek8_sensor {int vana; int ext_clk; int reset; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (int ,int ) ;
 int regulator_disable (int ) ;
 int udelay (int) ;

__attribute__((used)) static int et8ek8_power_off(struct et8ek8_sensor *sensor)
{
 gpiod_set_value(sensor->reset, 0);
 udelay(1);

 clk_disable_unprepare(sensor->ext_clk);

 return regulator_disable(sensor->vana);
}
