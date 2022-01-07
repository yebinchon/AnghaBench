
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int phydev; } ;
struct ethoc {int clk; scalar_t__ mdio; int napi; } ;


 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (scalar_t__) ;
 int mdiobus_unregister (scalar_t__) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int phy_disconnect (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ethoc_remove(struct platform_device *pdev)
{
 struct net_device *netdev = platform_get_drvdata(pdev);
 struct ethoc *priv = netdev_priv(netdev);

 if (netdev) {
  netif_napi_del(&priv->napi);
  phy_disconnect(netdev->phydev);

  if (priv->mdio) {
   mdiobus_unregister(priv->mdio);
   mdiobus_free(priv->mdio);
  }
  clk_disable_unprepare(priv->clk);
  unregister_netdev(netdev);
  free_netdev(netdev);
 }

 return 0;
}
