
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int dummy; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {void* stmmac_clk; void* pclk; } ;


 void* ERR_CAST (void*) ;
 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int *,char*,...) ;
 void* devm_clk_get (int *,char*) ;

__attribute__((used)) static void *dwc_qos_probe(struct platform_device *pdev,
      struct plat_stmmacenet_data *plat_dat,
      struct stmmac_resources *stmmac_res)
{
 int err;

 plat_dat->stmmac_clk = devm_clk_get(&pdev->dev, "apb_pclk");
 if (IS_ERR(plat_dat->stmmac_clk)) {
  dev_err(&pdev->dev, "apb_pclk clock not found.\n");
  return ERR_CAST(plat_dat->stmmac_clk);
 }

 err = clk_prepare_enable(plat_dat->stmmac_clk);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to enable apb_pclk clock: %d\n",
   err);
  return ERR_PTR(err);
 }

 plat_dat->pclk = devm_clk_get(&pdev->dev, "phy_ref_clk");
 if (IS_ERR(plat_dat->pclk)) {
  dev_err(&pdev->dev, "phy_ref_clk clock not found.\n");
  err = PTR_ERR(plat_dat->pclk);
  goto disable;
 }

 err = clk_prepare_enable(plat_dat->pclk);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to enable phy_ref clock: %d\n",
   err);
  goto disable;
 }

 return ((void*)0);

disable:
 clk_disable_unprepare(plat_dat->stmmac_clk);
 return ERR_PTR(err);
}
