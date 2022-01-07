
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {int misc_lock; scalar_t__ base; int IMR_cache; } ;
struct net_device {int dummy; } ;


 scalar_t__ IHR ;
 scalar_t__ IMR ;
 int ISR_RXDESC ;
 struct ns83820* PRIV (struct net_device*) ;
 int ihr ;
 int ns83820_rx_kick (struct net_device*) ;
 int rx_irq (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rx_action(unsigned long _dev)
{
 struct net_device *ndev = (void *)_dev;
 struct ns83820 *dev = PRIV(ndev);
 rx_irq(ndev);
 writel(ihr, dev->base + IHR);

 spin_lock_irq(&dev->misc_lock);
 dev->IMR_cache |= ISR_RXDESC;
 writel(dev->IMR_cache, dev->base + IMR);
 spin_unlock_irq(&dev->misc_lock);

 rx_irq(ndev);
 ns83820_rx_kick(ndev);
}
