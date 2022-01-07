
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {struct plat_stmmacenet_data* plat; } ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {int bsp_priv; int (* exit ) (struct platform_device*,int ) ;} ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stmmac_dvr_remove (int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;
 int stub1 (struct platform_device*,int ) ;

int stmmac_pltfr_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct stmmac_priv *priv = netdev_priv(ndev);
 struct plat_stmmacenet_data *plat = priv->plat;
 int ret = stmmac_dvr_remove(&pdev->dev);

 if (plat->exit)
  plat->exit(pdev, plat->bsp_priv);

 stmmac_remove_config_dt(pdev, plat);

 return ret;
}
