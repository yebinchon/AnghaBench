
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; int function; } ;
struct TYPE_4__ {int maxdefer; } ;
struct scc_channel {int lock; TYPE_2__ tx_wdog; TYPE_1__ kiss; } ;


 int HZ ;
 int TIMER_OFF ;
 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t_busy ;

__attribute__((used)) static void scc_start_defer(struct scc_channel *scc)
{
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 del_timer(&scc->tx_wdog);

 if (scc->kiss.maxdefer != 0 && scc->kiss.maxdefer != TIMER_OFF)
 {
  scc->tx_wdog.function = t_busy;
  scc->tx_wdog.expires = jiffies + HZ*scc->kiss.maxdefer;
  add_timer(&scc->tx_wdog);
 }
 spin_unlock_irqrestore(&scc->lock, flags);
}
