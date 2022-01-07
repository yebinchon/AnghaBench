
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int mac; } ;
struct stm32_ops {int dummy; } ;
struct stm32_dwmac {int * dev; struct stm32_ops const* ops; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {struct stm32_dwmac* bsp_priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int dev_err (int *,char*) ;
 struct stm32_dwmac* devm_kzalloc (int *,int,int ) ;
 struct stm32_ops* of_device_get_match_data (int *) ;
 int stm32_dwmac_clk_disable (struct stm32_dwmac*) ;
 int stm32_dwmac_init (struct plat_stmmacenet_data*) ;
 int stm32_dwmac_parse_data (struct stm32_dwmac*,int *) ;
 int stmmac_dvr_probe (int *,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int stm32_dwmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct stm32_dwmac *dwmac;
 const struct stm32_ops *data;
 int ret;

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 dwmac = devm_kzalloc(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
 if (!dwmac) {
  ret = -ENOMEM;
  goto err_remove_config_dt;
 }

 data = of_device_get_match_data(&pdev->dev);
 if (!data) {
  dev_err(&pdev->dev, "no of match data provided\n");
  ret = -EINVAL;
  goto err_remove_config_dt;
 }

 dwmac->ops = data;
 dwmac->dev = &pdev->dev;

 ret = stm32_dwmac_parse_data(dwmac, &pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "Unable to parse OF data\n");
  goto err_remove_config_dt;
 }

 plat_dat->bsp_priv = dwmac;

 ret = stm32_dwmac_init(plat_dat);
 if (ret)
  goto err_remove_config_dt;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_clk_disable;

 return 0;

err_clk_disable:
 stm32_dwmac_clk_disable(dwmac);
err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
