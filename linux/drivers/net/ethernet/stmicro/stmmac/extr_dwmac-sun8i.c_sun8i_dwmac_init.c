
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {scalar_t__ regulator; int tx_clk; } ;
struct platform_device {int dev; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int sun8i_dwmac_init(struct platform_device *pdev, void *priv)
{
 struct sunxi_priv_data *gmac = priv;
 int ret;

 if (gmac->regulator) {
  ret = regulator_enable(gmac->regulator);
  if (ret) {
   dev_err(&pdev->dev, "Fail to enable regulator\n");
   return ret;
  }
 }

 ret = clk_prepare_enable(gmac->tx_clk);
 if (ret) {
  if (gmac->regulator)
   regulator_disable(gmac->regulator);
  dev_err(&pdev->dev, "Could not enable AHB clock\n");
  return ret;
 }

 return 0;
}
