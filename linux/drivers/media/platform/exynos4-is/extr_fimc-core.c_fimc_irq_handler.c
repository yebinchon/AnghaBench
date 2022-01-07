
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reqbufs_count; } ;
struct TYPE_3__ {int m2m_dev; } ;
struct fimc_dev {int slock; TYPE_2__ vid_cap; int state; int irq_queue; TYPE_1__ m2m; } ;
struct fimc_ctx {int state; } ;
typedef int irqreturn_t ;


 int FIMC_CTX_SHUT ;
 int IRQ_HANDLED ;
 int ST_CAPT_JPEG ;
 int ST_CAPT_PEND ;
 int ST_M2M_PEND ;
 int ST_M2M_SUSPENDED ;
 int ST_M2M_SUSPENDING ;
 int VB2_BUF_STATE_DONE ;
 int fimc_capture_irq_handler (struct fimc_dev*,int) ;
 int fimc_hw_clear_irq (struct fimc_dev*) ;
 int fimc_m2m_job_finish (struct fimc_ctx*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct fimc_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t fimc_irq_handler(int irq, void *priv)
{
 struct fimc_dev *fimc = priv;
 struct fimc_ctx *ctx;

 fimc_hw_clear_irq(fimc);

 spin_lock(&fimc->slock);

 if (test_and_clear_bit(ST_M2M_PEND, &fimc->state)) {
  if (test_and_clear_bit(ST_M2M_SUSPENDING, &fimc->state)) {
   set_bit(ST_M2M_SUSPENDED, &fimc->state);
   wake_up(&fimc->irq_queue);
   goto out;
  }
  ctx = v4l2_m2m_get_curr_priv(fimc->m2m.m2m_dev);
  if (ctx != ((void*)0)) {
   spin_unlock(&fimc->slock);
   fimc_m2m_job_finish(ctx, VB2_BUF_STATE_DONE);

   if (ctx->state & FIMC_CTX_SHUT) {
    ctx->state &= ~FIMC_CTX_SHUT;
    wake_up(&fimc->irq_queue);
   }
   return IRQ_HANDLED;
  }
 } else if (test_bit(ST_CAPT_PEND, &fimc->state)) {
  int last_buf = test_bit(ST_CAPT_JPEG, &fimc->state) &&
    fimc->vid_cap.reqbufs_count == 1;
  fimc_capture_irq_handler(fimc, !last_buf);
 }
out:
 spin_unlock(&fimc->slock);
 return IRQ_HANDLED;
}
