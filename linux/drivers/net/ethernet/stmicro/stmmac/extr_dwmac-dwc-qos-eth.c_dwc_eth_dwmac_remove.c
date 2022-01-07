
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int plat; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct dwc_eth_dwmac_data {int (* remove ) (struct platform_device*) ;} ;


 int dev_err (int *,char*,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 struct dwc_eth_dwmac_data* of_device_get_match_data (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stmmac_dvr_remove (int *) ;
 int stmmac_remove_config_dt (struct platform_device*,int ) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int dwc_eth_dwmac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct stmmac_priv *priv = netdev_priv(ndev);
 const struct dwc_eth_dwmac_data *data;
 int err;

 data = of_device_get_match_data(&pdev->dev);

 err = stmmac_dvr_remove(&pdev->dev);
 if (err < 0)
  dev_err(&pdev->dev, "failed to remove platform: %d\n", err);

 err = data->remove(pdev);
 if (err < 0)
  dev_err(&pdev->dev, "failed to remove subdriver: %d\n", err);

 stmmac_remove_config_dt(pdev, priv->plat);

 return err;
}
