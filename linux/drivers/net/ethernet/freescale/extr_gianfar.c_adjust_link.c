
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ duplex; scalar_t__ speed; } ;
struct net_device {struct phy_device* phydev; } ;
struct gfar_private {scalar_t__ oldlink; scalar_t__ oldduplex; scalar_t__ oldspeed; } ;


 int gfar_update_link_state (struct gfar_private*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void adjust_link(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;

 if (unlikely(phydev->link != priv->oldlink ||
       (phydev->link && (phydev->duplex != priv->oldduplex ||
           phydev->speed != priv->oldspeed))))
  gfar_update_link_state(priv);
}
