
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct oxnas_dwmac {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void oxnas_dwmac_exit(struct platform_device *pdev, void *priv)
{
 struct oxnas_dwmac *dwmac = priv;

 clk_disable_unprepare(dwmac->clk);
}
