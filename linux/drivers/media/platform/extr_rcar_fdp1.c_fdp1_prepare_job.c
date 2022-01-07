
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct fdp1_job {TYPE_7__* active; TYPE_5__* dst; int next; TYPE_7__* previous; } ;
struct fdp1_dev {int dummy; } ;
struct TYPE_8__ {int m2m_ctx; } ;
struct fdp1_ctx {unsigned int buffers_queued; int translen; int deint_mode; TYPE_7__* previous; int sequence; TYPE_1__ fh; struct fdp1_dev* fdp1; } ;
struct fdp1_buffer {TYPE_5__* fields; } ;
struct TYPE_14__ {TYPE_6__* vb; } ;
struct TYPE_10__ {int timestamp; } ;
struct TYPE_13__ {int flags; TYPE_3__ vb2_buf; int sequence; } ;
struct TYPE_12__ {TYPE_4__* vb; } ;
struct TYPE_9__ {int timestamp; } ;
struct TYPE_11__ {int flags; TYPE_2__ vb2_buf; int sequence; } ;


 scalar_t__ FDP1_DEINT_MODE_USES_NEXT (int ) ;
 scalar_t__ FDP1_DEINT_MODE_USES_PREV (int ) ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int dprintk (struct fdp1_dev*,char*,...) ;
 TYPE_7__* fdp1_dequeue_field (struct fdp1_ctx*) ;
 struct fdp1_job* fdp1_job_alloc (struct fdp1_dev*) ;
 int fdp1_job_free (struct fdp1_dev*,struct fdp1_job*) ;
 int fdp1_peek_queued_field (struct fdp1_ctx*) ;
 int queue_job (struct fdp1_dev*,struct fdp1_job*) ;
 struct fdp1_buffer* to_fdp1_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;

__attribute__((used)) static struct fdp1_job *fdp1_prepare_job(struct fdp1_ctx *ctx)
{
 struct vb2_v4l2_buffer *vbuf;
 struct fdp1_buffer *fbuf;
 struct fdp1_dev *fdp1 = ctx->fdp1;
 struct fdp1_job *job;
 unsigned int buffers_required = 1;

 dprintk(fdp1, "+\n");

 if (FDP1_DEINT_MODE_USES_NEXT(ctx->deint_mode))
  buffers_required = 2;

 if (ctx->buffers_queued < buffers_required)
  return ((void*)0);

 job = fdp1_job_alloc(fdp1);
 if (!job) {
  dprintk(fdp1, "No free jobs currently available\n");
  return ((void*)0);
 }

 job->active = fdp1_dequeue_field(ctx);
 if (!job->active) {

  dprintk(fdp1, "No input buffers currently available\n");

  fdp1_job_free(fdp1, job);
  return ((void*)0);
 }

 dprintk(fdp1, "+ Buffer en-route...\n");




 vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 fbuf = to_fdp1_buffer(vbuf);
 job->dst = &fbuf->fields[0];

 job->active->vb->sequence = ctx->sequence;
 job->dst->vb->sequence = ctx->sequence;
 ctx->sequence++;

 if (FDP1_DEINT_MODE_USES_PREV(ctx->deint_mode)) {
  job->previous = ctx->previous;


  ctx->previous = job->active;
 }

 if (FDP1_DEINT_MODE_USES_NEXT(ctx->deint_mode)) {

  job->next = fdp1_peek_queued_field(ctx);
 }



 job->dst->vb->vb2_buf.timestamp = job->active->vb->vb2_buf.timestamp;

 job->dst->vb->flags = job->active->vb->flags &
    V4L2_BUF_FLAG_TSTAMP_SRC_MASK;




 ctx->translen++;


 queue_job(fdp1, job);

 dprintk(fdp1, "Job Queued translen = %d\n", ctx->translen);

 return job;
}
