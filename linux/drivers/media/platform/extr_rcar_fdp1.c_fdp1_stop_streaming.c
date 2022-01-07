
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int type; } ;
struct fdp1_job {TYPE_2__* dst; struct fdp1_field_buffer* active; struct fdp1_field_buffer* previous; } ;
struct fdp1_field_buffer {int dummy; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct fdp1_ctx {TYPE_3__* fdp1; struct fdp1_field_buffer* previous; int deint_mode; int fields_queue; int * smsk_cpu; scalar_t__* smsk_addr; int smsk_size; TYPE_1__ fh; } ;
struct TYPE_6__ {int hw_job_list; int queued_job_list; int dev; int irqlock; } ;
struct TYPE_5__ {struct vb2_v4l2_buffer* vb; } ;


 scalar_t__ FDP1_DEINT_MODE_USES_PREV (int ) ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VB2_BUF_STATE_ERROR ;
 int WARN (int,char*) ;
 int dma_free_coherent (int ,int ,int *,scalar_t__) ;
 struct fdp1_field_buffer* fdp1_dequeue_field (struct fdp1_ctx*) ;
 int fdp1_field_complete (struct fdp1_ctx*,struct fdp1_field_buffer*) ;
 struct fdp1_job* get_queued_job (TYPE_3__*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct fdp1_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void fdp1_stop_streaming(struct vb2_queue *q)
{
 struct fdp1_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;
 unsigned long flags;

 while (1) {
  if (V4L2_TYPE_IS_OUTPUT(q->type))
   vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (vbuf == ((void*)0))
   break;
  spin_lock_irqsave(&ctx->fdp1->irqlock, flags);
  v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
  spin_unlock_irqrestore(&ctx->fdp1->irqlock, flags);
 }


 if (V4L2_TYPE_IS_OUTPUT(q->type)) {

  struct fdp1_field_buffer *fbuf;


  fbuf = fdp1_dequeue_field(ctx);
  while (fbuf != ((void*)0)) {
   fdp1_field_complete(ctx, fbuf);
   fbuf = fdp1_dequeue_field(ctx);
  }


  if (ctx->smsk_cpu) {
   dma_free_coherent(ctx->fdp1->dev, ctx->smsk_size,
       ctx->smsk_cpu, ctx->smsk_addr[0]);
   ctx->smsk_addr[0] = ctx->smsk_addr[1] = 0;
   ctx->smsk_cpu = ((void*)0);
  }

  WARN(!list_empty(&ctx->fields_queue),
       "Buffer queue not empty");
 } else {

  struct fdp1_job *job;

  job = get_queued_job(ctx->fdp1);
  while (job) {
   if (FDP1_DEINT_MODE_USES_PREV(ctx->deint_mode))
    fdp1_field_complete(ctx, job->previous);
   else
    fdp1_field_complete(ctx, job->active);

   v4l2_m2m_buf_done(job->dst->vb, VB2_BUF_STATE_ERROR);
   job->dst = ((void*)0);

   job = get_queued_job(ctx->fdp1);
  }


  fdp1_field_complete(ctx, ctx->previous);

  WARN(!list_empty(&ctx->fdp1->queued_job_list),
       "Queued Job List not empty");

  WARN(!list_empty(&ctx->fdp1->hw_job_list),
       "HW Job list not empty");
 }
}
