
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv643xx_eth_shared_private {int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int mv643xx_eth_shared_of_remove () ;
 struct mv643xx_eth_shared_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv643xx_eth_shared_remove(struct platform_device *pdev)
{
 struct mv643xx_eth_shared_private *msp = platform_get_drvdata(pdev);

 mv643xx_eth_shared_of_remove();
 if (!IS_ERR(msp->clk))
  clk_disable_unprepare(msp->clk);
 return 0;
}
