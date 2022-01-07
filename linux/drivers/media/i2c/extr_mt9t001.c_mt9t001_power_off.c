
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t001 {int clk; int regulators; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void mt9t001_power_off(struct mt9t001 *mt9t001)
{
 regulator_bulk_disable(ARRAY_SIZE(mt9t001->regulators),
          mt9t001->regulators);

 clk_disable_unprepare(mt9t001->clk);
}
