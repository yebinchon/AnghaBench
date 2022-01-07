
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxs_lradc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct mxs_lradc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxs_lradc_remove(struct platform_device *pdev)
{
 struct mxs_lradc *lradc = platform_get_drvdata(pdev);

 clk_disable_unprepare(lradc->clk);

 return 0;
}
