
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ link; scalar_t__ speed; int duplex; } ;
struct net_device {int name; struct phy_device* phydev; } ;
struct greth_private {scalar_t__ speed; int duplex; scalar_t__ link; int devlock; TYPE_1__* regs; } ;
struct TYPE_2__ {int control; } ;


 scalar_t__ DUPLEX_FULL ;
 int GRETH_CTRL_FD ;
 int GRETH_CTRL_GB ;
 int GRETH_CTRL_SP ;
 int GRETH_REGLOAD (int ) ;
 int GRETH_REGSAVE (int ,int) ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 struct greth_private* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void greth_link_change(struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 unsigned long flags;
 int status_change = 0;
 u32 ctrl;

 spin_lock_irqsave(&greth->devlock, flags);

 if (phydev->link) {

  if ((greth->speed != phydev->speed) || (greth->duplex != phydev->duplex)) {
   ctrl = GRETH_REGLOAD(greth->regs->control) &
          ~(GRETH_CTRL_FD | GRETH_CTRL_SP | GRETH_CTRL_GB);

   if (phydev->duplex)
    ctrl |= GRETH_CTRL_FD;

   if (phydev->speed == SPEED_100)
    ctrl |= GRETH_CTRL_SP;
   else if (phydev->speed == SPEED_1000)
    ctrl |= GRETH_CTRL_GB;

   GRETH_REGSAVE(greth->regs->control, ctrl);
   greth->speed = phydev->speed;
   greth->duplex = phydev->duplex;
   status_change = 1;
  }
 }

 if (phydev->link != greth->link) {
  if (!phydev->link) {
   greth->speed = 0;
   greth->duplex = -1;
  }
  greth->link = phydev->link;

  status_change = 1;
 }

 spin_unlock_irqrestore(&greth->devlock, flags);

 if (status_change) {
  if (phydev->link)
   pr_debug("%s: link up (%d/%s)\n",
    dev->name, phydev->speed,
    DUPLEX_FULL == phydev->duplex ? "Full" : "Half");
  else
   pr_debug("%s: link down\n", dev->name);
 }
}
