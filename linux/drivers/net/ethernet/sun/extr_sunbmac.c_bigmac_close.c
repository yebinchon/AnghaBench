
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct bigmac {scalar_t__ timer_ticks; int timer_state; int bigmac_timer; } ;


 int asleep ;
 int bigmac_clean_rings (struct bigmac*) ;
 int bigmac_stop (struct bigmac*) ;
 int del_timer (int *) ;
 int free_irq (int ,struct bigmac*) ;
 struct bigmac* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bigmac_close(struct net_device *dev)
{
 struct bigmac *bp = netdev_priv(dev);

 del_timer(&bp->bigmac_timer);
 bp->timer_state = asleep;
 bp->timer_ticks = 0;

 bigmac_stop(bp);
 bigmac_clean_rings(bp);
 free_irq(dev->irq, bp);
 return 0;
}
