
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int clk; int regulator; } ;


 int mt9m111_suspend (struct mt9m111*) ;
 int regulator_disable (int ) ;
 int v4l2_clk_disable (int ) ;

__attribute__((used)) static void mt9m111_power_off(struct mt9m111 *mt9m111)
{
 mt9m111_suspend(mt9m111);
 regulator_disable(mt9m111->regulator);
 v4l2_clk_disable(mt9m111->clk);
}
