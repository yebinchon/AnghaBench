
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fdp1_job {TYPE_1__* dst; int active; int previous; } ;
struct fdp1_dev {int m2m_dev; int irqlock; int v4l2_dev; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct fdp1_ctx {scalar_t__ num_processed; scalar_t__ translen; TYPE_2__ fh; struct fdp1_dev* fdp1; scalar_t__ aborting; int deint_mode; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int vb; } ;


 scalar_t__ FDP1_DEINT_MODE_USES_PREV (int ) ;
 int dprintk (struct fdp1_dev*,char*,...) ;
 int fdp1_device_process (struct fdp1_ctx*) ;
 int fdp1_field_complete (struct fdp1_ctx*,int ) ;
 int fdp1_job_free (struct fdp1_dev*,struct fdp1_job*) ;
 struct fdp1_job* get_hw_queued_job (struct fdp1_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_err (int *,char*) ;
 int v4l2_m2m_buf_done (int ,int) ;
 struct fdp1_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;

__attribute__((used)) static void device_frame_end(struct fdp1_dev *fdp1,
        enum vb2_buffer_state state)
{
 struct fdp1_ctx *ctx;
 unsigned long flags;
 struct fdp1_job *job = get_hw_queued_job(fdp1);

 dprintk(fdp1, "+\n");

 ctx = v4l2_m2m_get_curr_priv(fdp1->m2m_dev);

 if (ctx == ((void*)0)) {
  v4l2_err(&fdp1->v4l2_dev,
   "Instance released before the end of transaction\n");
  return;
 }

 ctx->num_processed++;





 if (FDP1_DEINT_MODE_USES_PREV(ctx->deint_mode))
  fdp1_field_complete(ctx, job->previous);
 else
  fdp1_field_complete(ctx, job->active);

 spin_lock_irqsave(&fdp1->irqlock, flags);
 v4l2_m2m_buf_done(job->dst->vb, state);
 job->dst = ((void*)0);
 spin_unlock_irqrestore(&fdp1->irqlock, flags);


 fdp1_job_free(fdp1, job);

 dprintk(fdp1, "curr_ctx->num_processed %d curr_ctx->translen %d\n",
  ctx->num_processed, ctx->translen);

 if (ctx->num_processed == ctx->translen ||
   ctx->aborting) {
  dprintk(ctx->fdp1, "Finishing transaction\n");
  ctx->num_processed = 0;
  v4l2_m2m_job_finish(fdp1->m2m_dev, ctx->fh.m2m_ctx);
 } else {




  fdp1_device_process(ctx);
 }
}
