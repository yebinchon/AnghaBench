
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcnet32_private {int lock; TYPE_1__* a; } ;
struct net_device_stats {int rx_missed_errors; } ;
struct net_device {unsigned long base_addr; struct net_device_stats stats; } ;
struct TYPE_2__ {int (* read_csr ) (unsigned long,int) ;} ;


 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned long,int) ;

__attribute__((used)) static struct net_device_stats *pcnet32_get_stats(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long ioaddr = dev->base_addr;
 unsigned long flags;

 spin_lock_irqsave(&lp->lock, flags);
 dev->stats.rx_missed_errors = lp->a->read_csr(ioaddr, 112);
 spin_unlock_irqrestore(&lp->lock, flags);

 return &dev->stats;
}
