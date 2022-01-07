
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_m2m_dev {int job_spinlock; TYPE_1__* m2m_ops; } ;
struct v4l2_m2m_ctx {int job_flags; int queue; int finished; int priv; struct v4l2_m2m_dev* m2m_dev; } ;
struct TYPE_2__ {int (* job_abort ) (int ) ;} ;


 int TRANS_ABORT ;
 int TRANS_QUEUED ;
 int TRANS_RUNNING ;
 int dprintk (char*,struct v4l2_m2m_ctx*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void v4l2_m2m_cancel_job(struct v4l2_m2m_ctx *m2m_ctx)
{
 struct v4l2_m2m_dev *m2m_dev;
 unsigned long flags;

 m2m_dev = m2m_ctx->m2m_dev;
 spin_lock_irqsave(&m2m_dev->job_spinlock, flags);

 m2m_ctx->job_flags |= TRANS_ABORT;
 if (m2m_ctx->job_flags & TRANS_RUNNING) {
  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
  if (m2m_dev->m2m_ops->job_abort)
   m2m_dev->m2m_ops->job_abort(m2m_ctx->priv);
  dprintk("m2m_ctx %p running, will wait to complete\n", m2m_ctx);
  wait_event(m2m_ctx->finished,
    !(m2m_ctx->job_flags & TRANS_RUNNING));
 } else if (m2m_ctx->job_flags & TRANS_QUEUED) {
  list_del(&m2m_ctx->queue);
  m2m_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
  dprintk("m2m_ctx: %p had been on queue and was removed\n",
   m2m_ctx);
 } else {

  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
 }
}
