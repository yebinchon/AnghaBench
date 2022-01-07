
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int buf_struct_size; int dev; int min_buffers_needed; int type; } ;
struct hva_stream {int dummy; } ;
struct hva_frame {int dummy; } ;
struct hva_ctx {TYPE_1__* hva_dev; } ;
struct TYPE_2__ {int dev; } ;


 int MIN_FRAMES ;
 int MIN_STREAMS ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int queue_init (struct hva_ctx*,struct vb2_queue*) ;

__attribute__((used)) static int hva_queue_init(void *priv, struct vb2_queue *src_vq,
     struct vb2_queue *dst_vq)
{
 struct hva_ctx *ctx = priv;
 int ret;

 src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 src_vq->buf_struct_size = sizeof(struct hva_frame);
 src_vq->min_buffers_needed = MIN_FRAMES;
 src_vq->dev = ctx->hva_dev->dev;

 ret = queue_init(ctx, src_vq);
 if (ret)
  return ret;

 dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 dst_vq->buf_struct_size = sizeof(struct hva_stream);
 dst_vq->min_buffers_needed = MIN_STREAMS;
 dst_vq->dev = ctx->hva_dev->dev;

 return queue_init(ctx, dst_vq);
}
