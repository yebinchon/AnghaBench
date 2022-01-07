
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9v032 {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mt9v032_power_off(struct mt9v032 *mt9v032)
{
 clk_disable_unprepare(mt9v032->clk);
}
