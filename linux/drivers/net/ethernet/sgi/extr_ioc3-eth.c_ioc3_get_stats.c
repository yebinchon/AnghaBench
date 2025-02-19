
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int collisions; } ;
struct net_device {struct net_device_stats stats; } ;
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int etcdc; } ;


 int ETCDC_COLLCNT_MASK ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;

__attribute__((used)) static struct net_device_stats *ioc3_get_stats(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_ethregs *regs = ip->regs;

 dev->stats.collisions += readl(&regs->etcdc) & ETCDC_COLLCNT_MASK;
 return &dev->stats;
}
