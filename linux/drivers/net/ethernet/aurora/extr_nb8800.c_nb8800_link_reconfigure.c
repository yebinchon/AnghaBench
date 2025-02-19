
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {scalar_t__ speed; scalar_t__ duplex; scalar_t__ link; } ;


 int nb8800_mac_config (struct net_device*) ;
 int nb8800_pause_config (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void nb8800_link_reconfigure(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 int change = 0;

 if (phydev->link) {
  if (phydev->speed != priv->speed) {
   priv->speed = phydev->speed;
   change = 1;
  }

  if (phydev->duplex != priv->duplex) {
   priv->duplex = phydev->duplex;
   change = 1;
  }

  if (change)
   nb8800_mac_config(dev);

  nb8800_pause_config(dev);
 }

 if (phydev->link != priv->link) {
  priv->link = phydev->link;
  change = 1;
 }

 if (change)
  phy_print_status(phydev);
}
