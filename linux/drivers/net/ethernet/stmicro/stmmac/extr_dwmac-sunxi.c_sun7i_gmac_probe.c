
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {struct plat_stmmacenet_data* regulator; struct plat_stmmacenet_data* tx_clk; int interface; } ;
struct stmmac_resources {int mac; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int tx_coe; int has_gmac; int (* init ) (struct platform_device*,struct sunxi_priv_data*) ;struct sunxi_priv_data* bsp_priv; int fix_mac_speed; int (* exit ) (struct platform_device*,struct sunxi_priv_data*) ;} ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 struct plat_stmmacenet_data* devm_clk_get (struct device*,char*) ;
 struct sunxi_priv_data* devm_kzalloc (struct device*,int,int ) ;
 struct plat_stmmacenet_data* devm_regulator_get_optional (struct device*,char*) ;
 int of_get_phy_mode (int ) ;
 int stmmac_dvr_probe (struct device*,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;
 int sun7i_fix_speed ;
 int sun7i_gmac_exit (struct platform_device*,struct sunxi_priv_data*) ;
 int sun7i_gmac_init (struct platform_device*,struct sunxi_priv_data*) ;

__attribute__((used)) static int sun7i_gmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct sunxi_priv_data *gmac;
 struct device *dev = &pdev->dev;
 int ret;

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 gmac = devm_kzalloc(dev, sizeof(*gmac), GFP_KERNEL);
 if (!gmac) {
  ret = -ENOMEM;
  goto err_remove_config_dt;
 }

 gmac->interface = of_get_phy_mode(dev->of_node);

 gmac->tx_clk = devm_clk_get(dev, "allwinner_gmac_tx");
 if (IS_ERR(gmac->tx_clk)) {
  dev_err(dev, "could not get tx clock\n");
  ret = PTR_ERR(gmac->tx_clk);
  goto err_remove_config_dt;
 }


 gmac->regulator = devm_regulator_get_optional(dev, "phy");
 if (IS_ERR(gmac->regulator)) {
  if (PTR_ERR(gmac->regulator) == -EPROBE_DEFER) {
   ret = -EPROBE_DEFER;
   goto err_remove_config_dt;
  }
  dev_info(dev, "no regulator found\n");
  gmac->regulator = ((void*)0);
 }



 plat_dat->tx_coe = 1;
 plat_dat->has_gmac = 1;
 plat_dat->bsp_priv = gmac;
 plat_dat->init = sun7i_gmac_init;
 plat_dat->exit = sun7i_gmac_exit;
 plat_dat->fix_mac_speed = sun7i_fix_speed;

 ret = sun7i_gmac_init(pdev, plat_dat->bsp_priv);
 if (ret)
  goto err_remove_config_dt;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_gmac_exit;

 return 0;

err_gmac_exit:
 sun7i_gmac_exit(pdev, plat_dat->bsp_priv);
err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
