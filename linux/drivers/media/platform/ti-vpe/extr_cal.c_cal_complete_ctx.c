
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int * lock; struct vb2_queue* queue; TYPE_2__* v4l2_dev; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct cal_ctx* drv_priv; int type; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int active; } ;
struct cal_ctx {int external_rate; TYPE_2__ v4l2_dev; int mutex; struct video_device vdev; TYPE_1__ vidq; struct vb2_queue vb_vidq; int slock; int timeperframe; } ;
struct cal_buffer {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VFL_TYPE_GRABBER ;
 int cal_video_qops ;
 struct video_device cal_videodev ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tpf_default ;
 int v4l2_info (TYPE_2__*,char*,int ) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int video_device_node_name (struct video_device*) ;
 int video_nr ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct cal_ctx*) ;

__attribute__((used)) static int cal_complete_ctx(struct cal_ctx *ctx)
{
 struct video_device *vfd;
 struct vb2_queue *q;
 int ret;

 ctx->timeperframe = tpf_default;
 ctx->external_rate = 192000000;


 spin_lock_init(&ctx->slock);
 mutex_init(&ctx->mutex);


 q = &ctx->vb_vidq;
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
 q->drv_priv = ctx;
 q->buf_struct_size = sizeof(struct cal_buffer);
 q->ops = &cal_video_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &ctx->mutex;
 q->min_buffers_needed = 3;
 q->dev = ctx->v4l2_dev.dev;

 ret = vb2_queue_init(q);
 if (ret)
  return ret;


 INIT_LIST_HEAD(&ctx->vidq.active);

 vfd = &ctx->vdev;
 *vfd = cal_videodev;
 vfd->v4l2_dev = &ctx->v4l2_dev;
 vfd->queue = q;





 vfd->lock = &ctx->mutex;
 video_set_drvdata(vfd, ctx);

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, video_nr);
 if (ret < 0)
  return ret;

 v4l2_info(&ctx->v4l2_dev, "V4L2 device registered as %s\n",
    video_device_node_name(vfd));

 return 0;
}
