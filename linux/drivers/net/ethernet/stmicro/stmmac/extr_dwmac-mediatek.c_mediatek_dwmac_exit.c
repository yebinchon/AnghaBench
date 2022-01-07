
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mediatek_dwmac_variant {int num_clks; } ;
struct mediatek_dwmac_plat_data {int clks; struct mediatek_dwmac_variant* variant; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void mediatek_dwmac_exit(struct platform_device *pdev, void *priv)
{
 struct mediatek_dwmac_plat_data *plat = priv;
 const struct mediatek_dwmac_variant *variant = plat->variant;

 clk_bulk_disable_unprepare(variant->num_clks, plat->clks);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
}
