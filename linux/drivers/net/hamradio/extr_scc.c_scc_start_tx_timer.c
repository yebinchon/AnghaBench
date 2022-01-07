
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int lock; } ;


 int __scc_start_tx_timer (struct scc_channel*,void (*) (struct timer_list*),unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scc_start_tx_timer(struct scc_channel *scc,
          void (*handler)(struct timer_list *t),
          unsigned long when)
{
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 __scc_start_tx_timer(scc, handler, when);
 spin_unlock_irqrestore(&scc->lock, flags);
}
