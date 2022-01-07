
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct happy_meal {int happy_lock; int bigmacregs; } ;


 int happy_meal_get_counters (struct happy_meal*,int ) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct net_device_stats *happy_meal_get_stats(struct net_device *dev)
{
 struct happy_meal *hp = netdev_priv(dev);

 spin_lock_irq(&hp->happy_lock);
 happy_meal_get_counters(hp, hp->bigmacregs);
 spin_unlock_irq(&hp->happy_lock);

 return &dev->stats;
}
