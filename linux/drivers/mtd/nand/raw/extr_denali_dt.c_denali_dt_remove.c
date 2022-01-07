
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct denali_dt {int clk; int clk_x; int clk_ecc; int controller; } ;


 int clk_disable_unprepare (int ) ;
 int denali_remove (int *) ;
 struct denali_dt* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int denali_dt_remove(struct platform_device *pdev)
{
 struct denali_dt *dt = platform_get_drvdata(pdev);

 denali_remove(&dt->controller);
 clk_disable_unprepare(dt->clk_ecc);
 clk_disable_unprepare(dt->clk_x);
 clk_disable_unprepare(dt->clk);

 return 0;
}
