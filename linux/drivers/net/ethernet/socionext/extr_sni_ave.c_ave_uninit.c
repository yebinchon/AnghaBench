
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ave_private {int nrsts; int nclks; int * clk; int * rst; int mdio; int phydev; } ;


 int clk_disable_unprepare (int ) ;
 int mdiobus_unregister (int ) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void ave_uninit(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 int i;

 phy_disconnect(priv->phydev);
 mdiobus_unregister(priv->mdio);


 for (i = 0; i < priv->nrsts; i++)
  reset_control_assert(priv->rst[i]);
 for (i = 0; i < priv->nclks; i++)
  clk_disable_unprepare(priv->clk[i]);
}
