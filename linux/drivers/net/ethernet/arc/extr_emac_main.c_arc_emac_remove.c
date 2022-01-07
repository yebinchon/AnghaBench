
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct arc_emac_priv {int clk; int napi; } ;


 int IS_ERR (int ) ;
 int arc_mdio_remove (struct arc_emac_priv*) ;
 int clk_disable_unprepare (int ) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int phy_disconnect (int ) ;
 int unregister_netdev (struct net_device*) ;

int arc_emac_remove(struct net_device *ndev)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);

 phy_disconnect(ndev->phydev);
 arc_mdio_remove(priv);
 unregister_netdev(ndev);
 netif_napi_del(&priv->napi);

 if (!IS_ERR(priv->clk))
  clk_disable_unprepare(priv->clk);

 return 0;
}
