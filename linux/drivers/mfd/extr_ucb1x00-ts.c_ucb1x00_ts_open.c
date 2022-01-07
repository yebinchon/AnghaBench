
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ucb1x00_ts {int * rtask; TYPE_1__* ucb; int y_res; int x_res; int irq_wait; scalar_t__ irq_disabled; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ irq_base; } ;


 int BUG_ON (int *) ;
 int EFAULT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;
 int IS_ERR (int *) ;
 scalar_t__ UCB_IRQ_TSPX ;
 int free_irq (scalar_t__,struct ucb1x00_ts*) ;
 int init_waitqueue_head (int *) ;
 struct ucb1x00_ts* input_get_drvdata (struct input_dev*) ;
 int * kthread_run (int ,struct ucb1x00_ts*,char*) ;
 scalar_t__ machine_is_collie () ;
 int request_irq (scalar_t__,int ,unsigned long,char*,struct ucb1x00_ts*) ;
 int ucb1x00_adc_disable (TYPE_1__*) ;
 int ucb1x00_adc_enable (TYPE_1__*) ;
 int ucb1x00_thread ;
 int ucb1x00_ts_irq ;
 int ucb1x00_ts_read_xres (struct ucb1x00_ts*) ;
 int ucb1x00_ts_read_yres (struct ucb1x00_ts*) ;

__attribute__((used)) static int ucb1x00_ts_open(struct input_dev *idev)
{
 struct ucb1x00_ts *ts = input_get_drvdata(idev);
 unsigned long flags = 0;
 int ret = 0;

 BUG_ON(ts->rtask);

 if (machine_is_collie())
  flags = IRQF_TRIGGER_RISING;
 else
  flags = IRQF_TRIGGER_FALLING;

 ts->irq_disabled = 0;

 init_waitqueue_head(&ts->irq_wait);
 ret = request_irq(ts->ucb->irq_base + UCB_IRQ_TSPX, ucb1x00_ts_irq,
     flags, "ucb1x00-ts", ts);
 if (ret < 0)
  goto out;





 ucb1x00_adc_enable(ts->ucb);
 ts->x_res = ucb1x00_ts_read_xres(ts);
 ts->y_res = ucb1x00_ts_read_yres(ts);
 ucb1x00_adc_disable(ts->ucb);

 ts->rtask = kthread_run(ucb1x00_thread, ts, "ktsd");
 if (!IS_ERR(ts->rtask)) {
  ret = 0;
 } else {
  free_irq(ts->ucb->irq_base + UCB_IRQ_TSPX, ts);
  ts->rtask = ((void*)0);
  ret = -EFAULT;
 }

 out:
 return ret;
}
