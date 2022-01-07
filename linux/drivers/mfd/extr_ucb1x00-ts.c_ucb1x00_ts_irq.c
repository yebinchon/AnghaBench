
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1x00_ts {int irq_disabled; int irq_wait; int irq_lock; TYPE_1__* ucb; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ irq_base; } ;


 int IRQ_HANDLED ;
 scalar_t__ UCB_IRQ_TSPX ;
 int disable_irq_nosync (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ucb1x00_ts_irq(int irq, void *id)
{
 struct ucb1x00_ts *ts = id;

 spin_lock(&ts->irq_lock);
 ts->irq_disabled = 1;
 disable_irq_nosync(ts->ucb->irq_base + UCB_IRQ_TSPX);
 spin_unlock(&ts->irq_lock);
 wake_up(&ts->irq_wait);

 return IRQ_HANDLED;
}
