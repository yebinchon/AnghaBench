
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ucb1x00_ts {int * rtask; int irq_wait; TYPE_1__* ucb; int irq_lock; scalar_t__ irq_disabled; } ;
struct TYPE_5__ {scalar_t__ irq_base; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ UCB_IRQ_TSPX ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int enable_irq (scalar_t__) ;
 int kthread_freezable_should_stop (int*) ;
 int msleep (int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (long) ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ucb1x00_adc_disable (TYPE_1__*) ;
 int ucb1x00_adc_enable (TYPE_1__*) ;
 int ucb1x00_disable (TYPE_1__*) ;
 int ucb1x00_enable (TYPE_1__*) ;
 int ucb1x00_ts_event_release (struct ucb1x00_ts*) ;
 int ucb1x00_ts_evt_add (struct ucb1x00_ts*,unsigned int,unsigned int,unsigned int) ;
 int ucb1x00_ts_mode_int (struct ucb1x00_ts*) ;
 scalar_t__ ucb1x00_ts_pen_down (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_pressure (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_xpos (struct ucb1x00_ts*) ;
 unsigned int ucb1x00_ts_read_ypos (struct ucb1x00_ts*) ;
 int wait ;

__attribute__((used)) static int ucb1x00_thread(void *_ts)
{
 struct ucb1x00_ts *ts = _ts;
 DECLARE_WAITQUEUE(wait, current);
 bool frozen, ignore = 0;
 int valid = 0;

 set_freezable();
 add_wait_queue(&ts->irq_wait, &wait);
 while (!kthread_freezable_should_stop(&frozen)) {
  unsigned int x, y, p;
  signed long timeout;

  if (frozen)
   ignore = 1;

  ucb1x00_adc_enable(ts->ucb);

  x = ucb1x00_ts_read_xpos(ts);
  y = ucb1x00_ts_read_ypos(ts);
  p = ucb1x00_ts_read_pressure(ts);




  ucb1x00_ts_mode_int(ts);
  ucb1x00_adc_disable(ts->ucb);

  msleep(10);

  ucb1x00_enable(ts->ucb);


  if (ucb1x00_ts_pen_down(ts)) {
   set_current_state(TASK_INTERRUPTIBLE);

   spin_lock_irq(&ts->irq_lock);
   if (ts->irq_disabled) {
    ts->irq_disabled = 0;
    enable_irq(ts->ucb->irq_base + UCB_IRQ_TSPX);
   }
   spin_unlock_irq(&ts->irq_lock);
   ucb1x00_disable(ts->ucb);





   if (valid) {
    ucb1x00_ts_event_release(ts);
    valid = 0;
   }

   timeout = MAX_SCHEDULE_TIMEOUT;
  } else {
   ucb1x00_disable(ts->ucb);






   if (!ignore) {
    ucb1x00_ts_evt_add(ts, p, x, y);
    valid = 1;
   }

   set_current_state(TASK_INTERRUPTIBLE);
   timeout = HZ / 100;
  }

  schedule_timeout(timeout);
 }

 remove_wait_queue(&ts->irq_wait, &wait);

 ts->rtask = ((void*)0);
 return 0;
}
