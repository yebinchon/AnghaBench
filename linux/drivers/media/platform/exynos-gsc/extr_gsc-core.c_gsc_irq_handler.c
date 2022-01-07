
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_dev; } ;
struct gsc_dev {int slock; int irq_queue; TYPE_1__ m2m; int state; } ;
struct gsc_ctx {int state; int m2m_ctx; } ;
typedef int irqreturn_t ;


 int GSC_CTX_STOP_REQ ;
 int GSC_IRQ_OVERRUN ;
 int IRQ_HANDLED ;
 int ST_M2M_PEND ;
 int ST_M2M_SUSPENDED ;
 int ST_M2M_SUSPENDING ;
 int VB2_BUF_STATE_DONE ;
 int gsc_hw_clear_irq (struct gsc_dev*,int) ;
 int gsc_hw_enable_control (struct gsc_dev*,int) ;
 int gsc_hw_get_irq_status (struct gsc_dev*) ;
 int gsc_m2m_job_finish (struct gsc_ctx*,int ) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct gsc_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t gsc_irq_handler(int irq, void *priv)
{
 struct gsc_dev *gsc = priv;
 struct gsc_ctx *ctx;
 int gsc_irq;

 gsc_irq = gsc_hw_get_irq_status(gsc);
 gsc_hw_clear_irq(gsc, gsc_irq);

 if (gsc_irq == GSC_IRQ_OVERRUN) {
  pr_err("Local path input over-run interrupt has occurred!\n");
  return IRQ_HANDLED;
 }

 spin_lock(&gsc->slock);

 if (test_and_clear_bit(ST_M2M_PEND, &gsc->state)) {

  gsc_hw_enable_control(gsc, 0);

  if (test_and_clear_bit(ST_M2M_SUSPENDING, &gsc->state)) {
   set_bit(ST_M2M_SUSPENDED, &gsc->state);
   wake_up(&gsc->irq_queue);
   goto isr_unlock;
  }
  ctx = v4l2_m2m_get_curr_priv(gsc->m2m.m2m_dev);

  if (!ctx || !ctx->m2m_ctx)
   goto isr_unlock;

  spin_unlock(&gsc->slock);
  gsc_m2m_job_finish(ctx, VB2_BUF_STATE_DONE);


  if (ctx->state & GSC_CTX_STOP_REQ) {
   ctx->state &= ~GSC_CTX_STOP_REQ;
   wake_up(&gsc->irq_queue);
  }
  return IRQ_HANDLED;
 }

isr_unlock:
 spin_unlock(&gsc->slock);
 return IRQ_HANDLED;
}
