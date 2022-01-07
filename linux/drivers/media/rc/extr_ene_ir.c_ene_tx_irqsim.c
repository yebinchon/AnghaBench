
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ene_device {int hw_lock; } ;


 struct ene_device* dev ;
 int ene_tx_sample (struct ene_device*) ;
 struct ene_device* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_sim_timer ;

__attribute__((used)) static void ene_tx_irqsim(struct timer_list *t)
{
 struct ene_device *dev = from_timer(dev, t, tx_sim_timer);
 unsigned long flags;

 spin_lock_irqsave(&dev->hw_lock, flags);
 ene_tx_sample(dev);
 spin_unlock_irqrestore(&dev->hw_lock, flags);
}
