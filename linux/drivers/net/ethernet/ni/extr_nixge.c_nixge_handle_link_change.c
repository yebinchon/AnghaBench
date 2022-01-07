
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; } ;
struct nixge_priv {scalar_t__ link; scalar_t__ speed; scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;


 struct nixge_priv* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void nixge_handle_link_change(struct net_device *ndev)
{
 struct nixge_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;

 if (phydev->link != priv->link || phydev->speed != priv->speed ||
     phydev->duplex != priv->duplex) {
  priv->link = phydev->link;
  priv->speed = phydev->speed;
  priv->duplex = phydev->duplex;
  phy_print_status(phydev);
 }
}
