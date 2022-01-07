
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9p031 {scalar_t__ reset; int regulators; scalar_t__ clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_prepare_enable (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt9p031_power_on(struct mt9p031 *mt9p031)
{
 int ret;


 if (mt9p031->reset) {
  gpiod_set_value(mt9p031->reset, 1);
  usleep_range(1000, 2000);
 }


 ret = regulator_bulk_enable(ARRAY_SIZE(mt9p031->regulators),
       mt9p031->regulators);
 if (ret < 0)
  return ret;


 if (mt9p031->clk) {
  ret = clk_prepare_enable(mt9p031->clk);
  if (ret) {
   regulator_bulk_disable(ARRAY_SIZE(mt9p031->regulators),
            mt9p031->regulators);
   return ret;
  }
 }


 if (mt9p031->reset) {
  gpiod_set_value(mt9p031->reset, 0);
  usleep_range(1000, 2000);
 }

 return 0;
}
