
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int mac; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {int fix_mac_speed; struct meson_dwmac* bsp_priv; } ;
struct meson_dwmac {struct plat_stmmacenet_data* reg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 struct meson_dwmac* devm_kzalloc (int *,int,int ) ;
 struct plat_stmmacenet_data* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int meson6_dwmac_fix_mac_speed ;
 int stmmac_dvr_probe (int *,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int meson6_dwmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct meson_dwmac *dwmac;
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

 dwmac->reg = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(dwmac->reg)) {
  ret = PTR_ERR(dwmac->reg);
  goto err_remove_config_dt;
 }

 plat_dat->bsp_priv = dwmac;
 plat_dat->fix_mac_speed = meson6_dwmac_fix_mac_speed;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_remove_config_dt;

 return 0;

err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
