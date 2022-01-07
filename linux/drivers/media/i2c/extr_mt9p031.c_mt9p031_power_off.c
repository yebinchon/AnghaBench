
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9p031 {scalar_t__ clk; int regulators; scalar_t__ reset; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt9p031_power_off(struct mt9p031 *mt9p031)
{
 if (mt9p031->reset) {
  gpiod_set_value(mt9p031->reset, 1);
  usleep_range(1000, 2000);
 }

 regulator_bulk_disable(ARRAY_SIZE(mt9p031->regulators),
          mt9p031->regulators);

 if (mt9p031->clk)
  clk_disable_unprepare(mt9p031->clk);
}
