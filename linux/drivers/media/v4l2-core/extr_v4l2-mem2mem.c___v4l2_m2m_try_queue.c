
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_m2m_dev {int job_spinlock; int job_queue; TYPE_3__* m2m_ops; } ;
struct TYPE_6__ {int streaming; } ;
struct TYPE_10__ {int rdy_spinlock; int buffered; int rdy_queue; TYPE_1__ q; } ;
struct TYPE_7__ {int streaming; } ;
struct TYPE_9__ {int rdy_spinlock; int buffered; int rdy_queue; TYPE_2__ q; } ;
struct v4l2_m2m_ctx {int job_flags; TYPE_5__ out_q_ctx; TYPE_4__ cap_q_ctx; int queue; int priv; } ;
struct TYPE_8__ {int (* job_ready ) (int ) ;} ;


 int TRANS_ABORT ;
 int TRANS_QUEUED ;
 int dprintk (char*,...) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;

__attribute__((used)) static void __v4l2_m2m_try_queue(struct v4l2_m2m_dev *m2m_dev,
     struct v4l2_m2m_ctx *m2m_ctx)
{
 unsigned long flags_job, flags_out, flags_cap;

 dprintk("Trying to schedule a job for m2m_ctx: %p\n", m2m_ctx);

 if (!m2m_ctx->out_q_ctx.q.streaming
     || !m2m_ctx->cap_q_ctx.q.streaming) {
  dprintk("Streaming needs to be on for both queues\n");
  return;
 }

 spin_lock_irqsave(&m2m_dev->job_spinlock, flags_job);


 if (m2m_ctx->job_flags & TRANS_ABORT) {
  dprintk("Aborted context\n");
  goto job_unlock;
 }

 if (m2m_ctx->job_flags & TRANS_QUEUED) {
  dprintk("On job queue already\n");
  goto job_unlock;
 }

 spin_lock_irqsave(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);
 if (list_empty(&m2m_ctx->out_q_ctx.rdy_queue)
     && !m2m_ctx->out_q_ctx.buffered) {
  dprintk("No input buffers available\n");
  goto out_unlock;
 }
 spin_lock_irqsave(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
 if (list_empty(&m2m_ctx->cap_q_ctx.rdy_queue)
     && !m2m_ctx->cap_q_ctx.buffered) {
  dprintk("No output buffers available\n");
  goto cap_unlock;
 }
 spin_unlock_irqrestore(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
 spin_unlock_irqrestore(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);

 if (m2m_dev->m2m_ops->job_ready
  && (!m2m_dev->m2m_ops->job_ready(m2m_ctx->priv))) {
  dprintk("Driver not ready\n");
  goto job_unlock;
 }

 list_add_tail(&m2m_ctx->queue, &m2m_dev->job_queue);
 m2m_ctx->job_flags |= TRANS_QUEUED;

 spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags_job);
 return;

cap_unlock:
 spin_unlock_irqrestore(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
out_unlock:
 spin_unlock_irqrestore(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);
job_unlock:
 spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags_job);
}
