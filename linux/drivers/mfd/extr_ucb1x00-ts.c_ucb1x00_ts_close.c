
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ucb1x00_ts {TYPE_1__* ucb; scalar_t__ rtask; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ irq_base; } ;


 scalar_t__ UCB_IRQ_TSPX ;
 int UCB_TS_CR ;
 int free_irq (scalar_t__,struct ucb1x00_ts*) ;
 struct ucb1x00_ts* input_get_drvdata (struct input_dev*) ;
 int kthread_stop (scalar_t__) ;
 int ucb1x00_disable (TYPE_1__*) ;
 int ucb1x00_enable (TYPE_1__*) ;
 int ucb1x00_reg_write (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void ucb1x00_ts_close(struct input_dev *idev)
{
 struct ucb1x00_ts *ts = input_get_drvdata(idev);

 if (ts->rtask)
  kthread_stop(ts->rtask);

 ucb1x00_enable(ts->ucb);
 free_irq(ts->ucb->irq_base + UCB_IRQ_TSPX, ts);
 ucb1x00_reg_write(ts->ucb, UCB_TS_CR, 0);
 ucb1x00_disable(ts->ucb);
}
