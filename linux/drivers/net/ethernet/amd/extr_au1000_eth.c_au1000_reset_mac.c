
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct au1000_private {int lock; } ;


 int au1000_reset_mac_unlocked (struct net_device*) ;
 int hw ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private* const,int ,struct net_device*,char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void au1000_reset_mac(struct net_device *dev)
{
 struct au1000_private *const aup = netdev_priv(dev);
 unsigned long flags;

 netif_dbg(aup, hw, dev, "reset mac, aup %x\n",
     (unsigned)aup);

 spin_lock_irqsave(&aup->lock, flags);

 au1000_reset_mac_unlocked(dev);

 spin_unlock_irqrestore(&aup->lock, flags);
}
