
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int last_buffer_dequeued; int done_wq; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct coda_ctx {TYPE_1__ fh; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int coda_dbg (int,struct coda_ctx*,char*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void coda_wake_up_capture_queue(struct coda_ctx *ctx)
{
 struct vb2_queue *dst_vq;

 coda_dbg(1, ctx, "waking up capture queue\n");

 dst_vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 dst_vq->last_buffer_dequeued = 1;
 wake_up(&dst_vq->done_wq);
}
