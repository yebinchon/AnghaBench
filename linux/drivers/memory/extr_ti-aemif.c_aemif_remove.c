
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct aemif_device {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct aemif_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int aemif_remove(struct platform_device *pdev)
{
 struct aemif_device *aemif = platform_get_drvdata(pdev);

 clk_disable_unprepare(aemif->clk);
 return 0;
}
