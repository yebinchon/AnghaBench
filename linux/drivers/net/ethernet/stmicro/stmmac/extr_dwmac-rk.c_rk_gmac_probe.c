
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int mac; } ;
struct rk_gmac_ops {int dummy; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {int has_gmac; struct plat_stmmacenet_data* bsp_priv; int fix_mac_speed; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int dev_err (int *,char*) ;
 struct rk_gmac_ops* of_device_get_match_data (int *) ;
 int rk_fix_speed ;
 int rk_gmac_clk_init (struct plat_stmmacenet_data*) ;
 int rk_gmac_powerdown (struct plat_stmmacenet_data*) ;
 int rk_gmac_powerup (struct plat_stmmacenet_data*) ;
 struct plat_stmmacenet_data* rk_gmac_setup (struct platform_device*,struct plat_stmmacenet_data*,struct rk_gmac_ops const*) ;
 int stmmac_dvr_probe (int *,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int rk_gmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 const struct rk_gmac_ops *data;
 int ret;

 data = of_device_get_match_data(&pdev->dev);
 if (!data) {
  dev_err(&pdev->dev, "no of match data provided\n");
  return -EINVAL;
 }

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 plat_dat->has_gmac = 1;
 plat_dat->fix_mac_speed = rk_fix_speed;

 plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
 if (IS_ERR(plat_dat->bsp_priv)) {
  ret = PTR_ERR(plat_dat->bsp_priv);
  goto err_remove_config_dt;
 }

 ret = rk_gmac_clk_init(plat_dat);
 if (ret)
  return ret;

 ret = rk_gmac_powerup(plat_dat->bsp_priv);
 if (ret)
  goto err_remove_config_dt;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_gmac_powerdown;

 return 0;

err_gmac_powerdown:
 rk_gmac_powerdown(plat_dat->bsp_priv);
err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
