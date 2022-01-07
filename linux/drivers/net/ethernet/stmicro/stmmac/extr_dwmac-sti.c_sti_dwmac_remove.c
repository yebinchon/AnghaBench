
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_dwmac {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct sti_dwmac* get_stmmac_bsp_priv (int *) ;
 int stmmac_dvr_remove (int *) ;

__attribute__((used)) static int sti_dwmac_remove(struct platform_device *pdev)
{
 struct sti_dwmac *dwmac = get_stmmac_bsp_priv(&pdev->dev);
 int ret = stmmac_dvr_remove(&pdev->dev);

 clk_disable_unprepare(dwmac->clk);

 return ret;
}
