
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_missed_errors; int collisions; } ;
struct net_device {struct net_device_stats stats; } ;


 int PP_RxMiss ;
 int PP_TxCol ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readreg (struct net_device*,int ) ;

__attribute__((used)) static struct net_device_stats *
net_get_stats(struct net_device *dev)
{
 unsigned long flags;

 local_irq_save(flags);

 dev->stats.rx_missed_errors += (readreg(dev, PP_RxMiss) >> 6);
 dev->stats.collisions += (readreg(dev, PP_TxCol) >> 6);
 local_irq_restore(flags);

 return &dev->stats;
}
