
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_queue_ctx {int rdy_spinlock; scalar_t__ num_rdy; int rdy_queue; int q; } ;
struct v4l2_m2m_dev {int job_spinlock; struct v4l2_m2m_ctx* curr_ctx; } ;
struct v4l2_m2m_ctx {int job_flags; int finished; int queue; struct v4l2_m2m_dev* m2m_dev; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int INIT_LIST_HEAD (int *) ;
 int TRANS_QUEUED ;
 struct v4l2_m2m_queue_ctx* get_queue_ctx (struct v4l2_m2m_ctx*,int) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_cancel_job (struct v4l2_m2m_ctx*) ;
 int vb2_streamoff (int *,int) ;
 int wake_up (int *) ;

int v4l2_m2m_streamoff(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
         enum v4l2_buf_type type)
{
 struct v4l2_m2m_dev *m2m_dev;
 struct v4l2_m2m_queue_ctx *q_ctx;
 unsigned long flags_job, flags;
 int ret;


 v4l2_m2m_cancel_job(m2m_ctx);

 q_ctx = get_queue_ctx(m2m_ctx, type);
 ret = vb2_streamoff(&q_ctx->q, type);
 if (ret)
  return ret;

 m2m_dev = m2m_ctx->m2m_dev;
 spin_lock_irqsave(&m2m_dev->job_spinlock, flags_job);

 if (m2m_ctx->job_flags & TRANS_QUEUED)
  list_del(&m2m_ctx->queue);
 m2m_ctx->job_flags = 0;

 spin_lock_irqsave(&q_ctx->rdy_spinlock, flags);


 INIT_LIST_HEAD(&q_ctx->rdy_queue);
 q_ctx->num_rdy = 0;
 spin_unlock_irqrestore(&q_ctx->rdy_spinlock, flags);

 if (m2m_dev->curr_ctx == m2m_ctx) {
  m2m_dev->curr_ctx = ((void*)0);
  wake_up(&m2m_ctx->finished);
 }
 spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags_job);

 return 0;
}
