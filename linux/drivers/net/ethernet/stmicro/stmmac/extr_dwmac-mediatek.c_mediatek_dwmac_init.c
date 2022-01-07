
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mediatek_dwmac_variant {int (* dwmac_set_phy_interface ) (struct mediatek_dwmac_plat_data*) ;int (* dwmac_set_delay ) (struct mediatek_dwmac_plat_data*) ;int num_clks; int dma_bit_mask; } ;
struct mediatek_dwmac_plat_data {int dev; int clks; struct mediatek_dwmac_variant* variant; } ;


 int DMA_BIT_MASK (int ) ;
 int clk_bulk_prepare_enable (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct mediatek_dwmac_plat_data*) ;
 int stub2 (struct mediatek_dwmac_plat_data*) ;

__attribute__((used)) static int mediatek_dwmac_init(struct platform_device *pdev, void *priv)
{
 struct mediatek_dwmac_plat_data *plat = priv;
 const struct mediatek_dwmac_variant *variant = plat->variant;
 int ret;

 ret = dma_set_mask_and_coherent(plat->dev, DMA_BIT_MASK(variant->dma_bit_mask));
 if (ret) {
  dev_err(plat->dev, "No suitable DMA available, err = %d\n", ret);
  return ret;
 }

 ret = variant->dwmac_set_phy_interface(plat);
 if (ret) {
  dev_err(plat->dev, "failed to set phy interface, err = %d\n", ret);
  return ret;
 }

 ret = variant->dwmac_set_delay(plat);
 if (ret) {
  dev_err(plat->dev, "failed to set delay value, err = %d\n", ret);
  return ret;
 }

 ret = clk_bulk_prepare_enable(variant->num_clks, plat->clks);
 if (ret) {
  dev_err(plat->dev, "failed to enable clks, err = %d\n", ret);
  return ret;
 }

 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 return 0;
}
