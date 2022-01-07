
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct pcnet32_private {scalar_t__ chip_version; int lock; TYPE_1__* a; scalar_t__ port_tp; int autoneg; int mii_if; scalar_t__ mii; } ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int (* read_bcr ) (int ,int) ;} ;


 scalar_t__ PCNET32_79C970A ;
 int mii_link_ok (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static u32 pcnet32_get_link(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long flags;
 int r;

 spin_lock_irqsave(&lp->lock, flags);
 if (lp->mii) {
  r = mii_link_ok(&lp->mii_if);
 } else if (lp->chip_version == PCNET32_79C970A) {
  ulong ioaddr = dev->base_addr;

  if (!lp->autoneg && lp->port_tp)
   r = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
  else
   r = 1;
 } else if (lp->chip_version > PCNET32_79C970A) {
  ulong ioaddr = dev->base_addr;
  r = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
 } else {
  r = 1;
 }
 spin_unlock_irqrestore(&lp->lock, flags);

 return r;
}
