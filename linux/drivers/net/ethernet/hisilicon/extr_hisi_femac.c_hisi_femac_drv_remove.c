
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int phydev; } ;
struct hisi_femac_priv {int clk; int napi; } ;


 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int phy_disconnect (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int hisi_femac_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct hisi_femac_priv *priv = netdev_priv(ndev);

 netif_napi_del(&priv->napi);
 unregister_netdev(ndev);

 phy_disconnect(ndev->phydev);
 clk_disable_unprepare(priv->clk);
 free_netdev(ndev);

 return 0;
}
