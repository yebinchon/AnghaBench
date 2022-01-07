
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct aspeed_sdc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct aspeed_sdc* dev_get_drvdata (int *) ;

__attribute__((used)) static int aspeed_sdc_remove(struct platform_device *pdev)
{
 struct aspeed_sdc *sdc = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(sdc->clk);

 return 0;
}
