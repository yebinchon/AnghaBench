
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath6kl_device {TYPE_2__* htc_cnxt; } ;
struct ath6kl {TYPE_1__* htc_target; } ;
struct TYPE_4__ {scalar_t__ chk_irq_status_cnt; } ;
struct TYPE_3__ {struct ath6kl_device* dev; } ;


 int ATH6KL_HIF_COMMUNICATION_TIMEOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int proc_pending_irqs (struct ath6kl_device*,int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int ath6kl_hif_intr_bh_handler(struct ath6kl *ar)
{
 struct ath6kl_device *dev = ar->htc_target->dev;
 unsigned long timeout;
 int status = 0;
 bool done = 0;





 dev->htc_cnxt->chk_irq_status_cnt = 0;





 timeout = jiffies + msecs_to_jiffies(ATH6KL_HIF_COMMUNICATION_TIMEOUT);
 while (time_before(jiffies, timeout) && !done) {
  status = proc_pending_irqs(dev, &done);
  if (status)
   break;
 }

 return status;
}
