
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t001 {int regulators; int clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_prepare_enable (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int mt9t001_power_on(struct mt9t001 *mt9t001)
{
 int ret;


 ret = regulator_bulk_enable(ARRAY_SIZE(mt9t001->regulators),
       mt9t001->regulators);
 if (ret < 0)
  return ret;


 ret = clk_prepare_enable(mt9t001->clk);
 if (ret < 0)
  regulator_bulk_disable(ARRAY_SIZE(mt9t001->regulators),
           mt9t001->regulators);

 return ret;
}
