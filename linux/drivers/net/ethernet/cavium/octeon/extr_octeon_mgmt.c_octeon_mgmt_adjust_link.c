
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ duplex; scalar_t__ speed; } ;
struct octeon_mgmt {scalar_t__ last_link; scalar_t__ last_duplex; scalar_t__ last_speed; int lock; } ;
struct net_device {struct phy_device* phydev; } ;


 scalar_t__ DUPLEX_FULL ;
 int netdev_info (struct net_device*,char*,...) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int octeon_mgmt_disable_link (struct octeon_mgmt*) ;
 int octeon_mgmt_enable_link (struct octeon_mgmt*) ;
 int octeon_mgmt_update_link (struct octeon_mgmt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_mgmt_adjust_link(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 struct phy_device *phydev = netdev->phydev;
 unsigned long flags;
 int link_changed = 0;

 if (!phydev)
  return;

 spin_lock_irqsave(&p->lock, flags);


 if (!phydev->link && p->last_link)
  link_changed = -1;

 if (phydev->link &&
     (p->last_duplex != phydev->duplex ||
      p->last_link != phydev->link ||
      p->last_speed != phydev->speed)) {
  octeon_mgmt_disable_link(p);
  link_changed = 1;
  octeon_mgmt_update_link(p);
  octeon_mgmt_enable_link(p);
 }

 p->last_link = phydev->link;
 p->last_speed = phydev->speed;
 p->last_duplex = phydev->duplex;

 spin_unlock_irqrestore(&p->lock, flags);

 if (link_changed != 0) {
  if (link_changed > 0)
   netdev_info(netdev, "Link is up - %d/%s\n",
        phydev->speed, phydev->duplex == DUPLEX_FULL ? "Full" : "Half");
  else
   netdev_info(netdev, "Link is down\n");
 }
}
