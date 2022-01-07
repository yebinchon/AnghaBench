
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct bcmgenet_priv {int clk; scalar_t__ internal_phy; int irq1; int irq0; } ;


 int GENET_POWER_PASSIVE ;
 int bcmgenet_netif_stop (struct net_device*) ;
 int bcmgenet_power_down (struct bcmgenet_priv*,int ) ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct bcmgenet_priv*) ;
 int ifdown ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct bcmgenet_priv*,int ,struct net_device*,char*) ;
 int phy_disconnect (int ) ;

__attribute__((used)) static int bcmgenet_close(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 int ret = 0;

 netif_dbg(priv, ifdown, dev, "bcmgenet_close\n");

 bcmgenet_netif_stop(dev);


 phy_disconnect(dev->phydev);

 free_irq(priv->irq0, priv);
 free_irq(priv->irq1, priv);

 if (priv->internal_phy)
  ret = bcmgenet_power_down(priv, GENET_POWER_PASSIVE);

 clk_disable_unprepare(priv->clk);

 return ret;
}
