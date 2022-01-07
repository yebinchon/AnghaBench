
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct jz4780_nemc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct jz4780_nemc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int jz4780_nemc_remove(struct platform_device *pdev)
{
 struct jz4780_nemc *nemc = platform_get_drvdata(pdev);

 clk_disable_unprepare(nemc->clk);
 return 0;
}
