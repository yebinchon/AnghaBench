
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct fm_irq {scalar_t__ retry; scalar_t__ stage; } ;
struct fmdev {struct fm_irq irq_info; } ;
struct TYPE_2__ {int timer; } ;


 scalar_t__ FM_IRQ_TIMEOUT_RETRY_MAX ;
 int FM_SEND_INTMSK_CMD_IDX ;
 int fm_irq_call_stage (struct fmdev*,int ) ;
 int fmdbg (char*) ;
 int fmerr (char*) ;
 struct fmdev* from_timer (struct fmdev*,struct timer_list*,int ) ;
 TYPE_1__ irq_info ;

__attribute__((used)) static void int_timeout_handler(struct timer_list *t)
{
 struct fmdev *fmdev;
 struct fm_irq *fmirq;

 fmdbg("irq: timeout,trying to re-enable fm interrupts\n");
 fmdev = from_timer(fmdev, t, irq_info.timer);
 fmirq = &fmdev->irq_info;
 fmirq->retry++;

 if (fmirq->retry > FM_IRQ_TIMEOUT_RETRY_MAX) {


  fmirq->stage = 0;
  fmirq->retry = 0;
  fmerr("Recovery action failed duringirq processing, max retry reached\n");
  return;
 }
 fm_irq_call_stage(fmdev, FM_SEND_INTMSK_CMD_IDX);
}
