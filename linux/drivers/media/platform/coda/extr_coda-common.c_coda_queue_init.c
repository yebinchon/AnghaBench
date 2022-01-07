
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int buf_struct_size; int allow_zero_bytesused; int min_buffers_needed; int dev; int * lock; int timestamp_flags; int * ops; struct coda_ctx* drv_priv; } ;
struct v4l2_m2m_buffer {int dummy; } ;
struct coda_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; int dev_mutex; } ;


 int V4L2_BUF_FLAG_TIMESTAMP_COPY ;
 int coda_qops ;
 int vb2_queue_init (struct vb2_queue*) ;

__attribute__((used)) static int coda_queue_init(struct coda_ctx *ctx, struct vb2_queue *vq)
{
 vq->drv_priv = ctx;
 vq->ops = &coda_qops;
 vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
 vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 vq->lock = &ctx->dev->dev_mutex;






 vq->allow_zero_bytesused = 1;





 vq->min_buffers_needed = 1;
 vq->dev = ctx->dev->dev;

 return vb2_queue_init(vq);
}
