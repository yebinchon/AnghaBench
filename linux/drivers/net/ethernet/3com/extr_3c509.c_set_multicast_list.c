
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int flags; int name; } ;
struct el3_private {int lock; } ;


 scalar_t__ EL3_CMD ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RxBroadcast ;
 int RxMulticast ;
 int RxProm ;
 int RxStation ;
 int SetRxFilter ;
 int el3_debug ;
 int netdev_mc_count (struct net_device*) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
set_multicast_list(struct net_device *dev)
{
 unsigned long flags;
 struct el3_private *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;
 int mc_count = netdev_mc_count(dev);

 if (el3_debug > 1) {
  static int old;
  if (old != mc_count) {
   old = mc_count;
   pr_debug("%s: Setting Rx mode to %d addresses.\n",
     dev->name, mc_count);
  }
 }
 spin_lock_irqsave(&lp->lock, flags);
 if (dev->flags&IFF_PROMISC) {
  outw(SetRxFilter | RxStation | RxMulticast | RxBroadcast | RxProm,
    ioaddr + EL3_CMD);
 }
 else if (mc_count || (dev->flags&IFF_ALLMULTI)) {
  outw(SetRxFilter | RxStation | RxMulticast | RxBroadcast, ioaddr + EL3_CMD);
 }
 else
  outw(SetRxFilter | RxStation | RxBroadcast, ioaddr + EL3_CMD);
 spin_unlock_irqrestore(&lp->lock, flags);
}
