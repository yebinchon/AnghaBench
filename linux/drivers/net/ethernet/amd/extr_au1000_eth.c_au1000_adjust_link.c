
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ link; int speed; int duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct au1000_private {int old_speed; int old_duplex; scalar_t__ old_link; int lock; TYPE_1__* mac; } ;
struct TYPE_2__ {int control; } ;


 int BUG_ON (int) ;
 scalar_t__ DUPLEX_FULL ;
 int MAC_DISABLE_RX_OWN ;
 int MAC_FULL_DUPLEX ;


 int au1000_enable_rx_tx (struct net_device*) ;
 int au1000_hard_stop (struct net_device*) ;
 int mdelay (int) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;
 int writel (int ,int *) ;

__attribute__((used)) static void
au1000_adjust_link(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 unsigned long flags;
 u32 reg;

 int status_change = 0;

 BUG_ON(!phydev);

 spin_lock_irqsave(&aup->lock, flags);

 if (phydev->link && (aup->old_speed != phydev->speed)) {


  switch (phydev->speed) {
  case 129:
  case 128:
   break;
  default:
   netdev_warn(dev, "Speed (%d) is not 10/100 ???\n",
       phydev->speed);
   break;
  }

  aup->old_speed = phydev->speed;

  status_change = 1;
 }

 if (phydev->link && (aup->old_duplex != phydev->duplex)) {



  au1000_hard_stop(dev);

  reg = readl(&aup->mac->control);
  if (DUPLEX_FULL == phydev->duplex) {
   reg |= MAC_FULL_DUPLEX;
   reg &= ~MAC_DISABLE_RX_OWN;
  } else {
   reg &= ~MAC_FULL_DUPLEX;
   reg |= MAC_DISABLE_RX_OWN;
  }
  writel(reg, &aup->mac->control);
  wmb();
  mdelay(1);

  au1000_enable_rx_tx(dev);
  aup->old_duplex = phydev->duplex;

  status_change = 1;
 }

 if (phydev->link != aup->old_link) {


  if (!phydev->link) {

   aup->old_speed = 0;
   aup->old_duplex = -1;
  }

  aup->old_link = phydev->link;
  status_change = 1;
 }

 spin_unlock_irqrestore(&aup->lock, flags);

 if (status_change) {
  if (phydev->link)
   netdev_info(dev, "link up (%d/%s)\n",
          phydev->speed,
          DUPLEX_FULL == phydev->duplex ? "Full" : "Half");
  else
   netdev_info(dev, "link down\n");
 }
}
