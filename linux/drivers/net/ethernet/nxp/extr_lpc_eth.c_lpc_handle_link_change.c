
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ speed; int duplex; } ;
struct netdata_local {scalar_t__ speed; int duplex; scalar_t__ link; int lock; } ;
struct net_device {struct phy_device* phydev; } ;


 int __lpc_params_setup (struct netdata_local*) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lpc_handle_link_change(struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;
 unsigned long flags;

 bool status_change = 0;

 spin_lock_irqsave(&pldat->lock, flags);

 if (phydev->link) {
  if ((pldat->speed != phydev->speed) ||
      (pldat->duplex != phydev->duplex)) {
   pldat->speed = phydev->speed;
   pldat->duplex = phydev->duplex;
   status_change = 1;
  }
 }

 if (phydev->link != pldat->link) {
  if (!phydev->link) {
   pldat->speed = 0;
   pldat->duplex = -1;
  }
  pldat->link = phydev->link;

  status_change = 1;
 }

 spin_unlock_irqrestore(&pldat->lock, flags);

 if (status_change)
  __lpc_params_setup(pldat);
}
