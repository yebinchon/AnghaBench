
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m2m_dev; } ;
struct bdisp_dev {int slock; int irq_queue; TYPE_1__ m2m; int state; int timeout_work; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct bdisp_ctx {TYPE_2__ fh; } ;
typedef int irqreturn_t ;


 int BDISP_CTX_STOP_REQ ;
 int IRQ_HANDLED ;
 int ST_M2M_RUNNING ;
 int ST_M2M_SUSPENDED ;
 int ST_M2M_SUSPENDING ;
 int VB2_BUF_STATE_DONE ;
 scalar_t__ bdisp_ctx_state_is_set (int ,struct bdisp_ctx*) ;
 int bdisp_ctx_state_lock_clear (int ,struct bdisp_ctx*) ;
 int bdisp_dbg_perf_end (struct bdisp_dev*) ;
 int bdisp_job_finish (struct bdisp_ctx*,int ) ;
 int cancel_delayed_work (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct bdisp_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t bdisp_irq_thread(int irq, void *priv)
{
 struct bdisp_dev *bdisp = priv;
 struct bdisp_ctx *ctx;

 spin_lock(&bdisp->slock);

 bdisp_dbg_perf_end(bdisp);

 cancel_delayed_work(&bdisp->timeout_work);

 if (!test_and_clear_bit(ST_M2M_RUNNING, &bdisp->state))
  goto isr_unlock;

 if (test_and_clear_bit(ST_M2M_SUSPENDING, &bdisp->state)) {
  set_bit(ST_M2M_SUSPENDED, &bdisp->state);
  wake_up(&bdisp->irq_queue);
  goto isr_unlock;
 }

 ctx = v4l2_m2m_get_curr_priv(bdisp->m2m.m2m_dev);
 if (!ctx || !ctx->fh.m2m_ctx)
  goto isr_unlock;

 spin_unlock(&bdisp->slock);

 bdisp_job_finish(ctx, VB2_BUF_STATE_DONE);

 if (bdisp_ctx_state_is_set(BDISP_CTX_STOP_REQ, ctx)) {
  bdisp_ctx_state_lock_clear(BDISP_CTX_STOP_REQ, ctx);
  wake_up(&bdisp->irq_queue);
 }

 return IRQ_HANDLED;

isr_unlock:
 spin_unlock(&bdisp->slock);

 return IRQ_HANDLED;
}
