
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct happy_meal {int happy_flags; int irq; int happy_lock; int happy_timer; int gregs; } ;


 int HFLAG_PCI ;
 int HFLAG_QUATTRO ;
 int del_timer (int *) ;
 int free_irq (int ,struct net_device*) ;
 int happy_meal_clean_rings (struct happy_meal*) ;
 int happy_meal_stop (struct happy_meal*,int ) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int happy_meal_close(struct net_device *dev)
{
 struct happy_meal *hp = netdev_priv(dev);

 spin_lock_irq(&hp->happy_lock);
 happy_meal_stop(hp, hp->gregs);
 happy_meal_clean_rings(hp);


 del_timer(&hp->happy_timer);

 spin_unlock_irq(&hp->happy_lock);





 if ((hp->happy_flags & (HFLAG_QUATTRO|HFLAG_PCI)) != HFLAG_QUATTRO)
  free_irq(hp->irq, dev);

 return 0;
}
