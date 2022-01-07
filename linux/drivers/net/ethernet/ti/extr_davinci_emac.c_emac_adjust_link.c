
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ speed; int duplex; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct emac_priv {scalar_t__ speed; int link; int lock; int duplex; } ;


 int emac_update_phystatus (struct emac_priv*) ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void emac_adjust_link(struct net_device *ndev)
{
 struct emac_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;
 unsigned long flags;
 int new_state = 0;

 spin_lock_irqsave(&priv->lock, flags);

 if (phydev->link) {

  if (phydev->duplex != priv->duplex) {
   new_state = 1;
   priv->duplex = phydev->duplex;
  }
  if (phydev->speed != priv->speed) {
   new_state = 1;
   priv->speed = phydev->speed;
  }
  if (!priv->link) {
   new_state = 1;
   priv->link = 1;
  }

 } else if (priv->link) {
  new_state = 1;
  priv->link = 0;
  priv->speed = 0;
  priv->duplex = ~0;
 }
 if (new_state) {
  emac_update_phystatus(priv);
  phy_print_status(ndev->phydev);
 }

 spin_unlock_irqrestore(&priv->lock, flags);
}
