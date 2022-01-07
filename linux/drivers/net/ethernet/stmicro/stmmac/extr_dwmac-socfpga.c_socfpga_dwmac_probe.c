
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_resources {int mac; } ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct socfpga_dwmac_ops {int (* set_phy_mode ) (struct socfpga_dwmac*) ;} ;
struct socfpga_dwmac {int stmmac_rst; struct socfpga_dwmac_ops const* ops; struct plat_stmmacenet_data* stmmac_ocp_rst; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int fix_mac_speed; struct socfpga_dwmac* bsp_priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stmmac_rst; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int dev_err (struct device*,char*,...) ;
 struct socfpga_dwmac_ops* device_get_match_data (struct device*) ;
 struct socfpga_dwmac* devm_kzalloc (struct device*,int,int ) ;
 struct plat_stmmacenet_data* devm_reset_control_get_optional (struct device*,char*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int reset_control_deassert (struct plat_stmmacenet_data*) ;
 int socfpga_dwmac_fix_mac_speed ;
 int socfpga_dwmac_parse_data (struct socfpga_dwmac*,struct device*) ;
 int stmmac_dvr_probe (struct device*,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_dvr_remove (struct device*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;
 int stub1 (struct socfpga_dwmac*) ;

__attribute__((used)) static int socfpga_dwmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct device *dev = &pdev->dev;
 int ret;
 struct socfpga_dwmac *dwmac;
 struct net_device *ndev;
 struct stmmac_priv *stpriv;
 const struct socfpga_dwmac_ops *ops;

 ops = device_get_match_data(&pdev->dev);
 if (!ops) {
  dev_err(&pdev->dev, "no of match data provided\n");
  return -EINVAL;
 }

 ret = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (ret)
  return ret;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 dwmac = devm_kzalloc(dev, sizeof(*dwmac), GFP_KERNEL);
 if (!dwmac) {
  ret = -ENOMEM;
  goto err_remove_config_dt;
 }

 dwmac->stmmac_ocp_rst = devm_reset_control_get_optional(dev, "stmmaceth-ocp");
 if (IS_ERR(dwmac->stmmac_ocp_rst)) {
  ret = PTR_ERR(dwmac->stmmac_ocp_rst);
  dev_err(dev, "error getting reset control of ocp %d\n", ret);
  goto err_remove_config_dt;
 }

 reset_control_deassert(dwmac->stmmac_ocp_rst);

 ret = socfpga_dwmac_parse_data(dwmac, dev);
 if (ret) {
  dev_err(dev, "Unable to parse OF data\n");
  goto err_remove_config_dt;
 }

 dwmac->ops = ops;
 plat_dat->bsp_priv = dwmac;
 plat_dat->fix_mac_speed = socfpga_dwmac_fix_mac_speed;

 ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (ret)
  goto err_remove_config_dt;

 ndev = platform_get_drvdata(pdev);
 stpriv = netdev_priv(ndev);





 dwmac->stmmac_rst = stpriv->plat->stmmac_rst;

 ret = ops->set_phy_mode(dwmac);
 if (ret)
  goto err_dvr_remove;

 return 0;

err_dvr_remove:
 stmmac_dvr_remove(&pdev->dev);
err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return ret;
}
