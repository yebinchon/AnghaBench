
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* queue; int * lock; int * v4l2_dev; } ;
struct TYPE_8__ {int io_modes; int gfp_flags; int buf_struct_size; int min_buffers_needed; int * dev; int * lock; struct tw68_dev* drv_priv; int * mem_ops; int * ops; int timestamp_flags; int type; } ;
struct tw68_dev {int width; int height; TYPE_2__ vdev; TYPE_4__ vidq; int lock; int v4l2_dev; TYPE_1__* pci; int active; int field; int fmt; } ;
struct tw68_buf {int dummy; } ;
struct TYPE_6__ {int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_BGR24 ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int __GFP_DMA32 ;
 int __GFP_KSWAPD_RECLAIM ;
 int format_by_fourcc (int ) ;
 int set_tvnorm (struct tw68_dev*,int *) ;
 int * tvnorms ;
 int tw68_video_qops ;
 TYPE_2__ tw68_video_template ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (TYPE_4__*) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct tw68_dev*) ;

int tw68_video_init2(struct tw68_dev *dev, int video_nr)
{
 int ret;

 set_tvnorm(dev, &tvnorms[0]);

 dev->fmt = format_by_fourcc(V4L2_PIX_FMT_BGR24);
 dev->width = 720;
 dev->height = 576;
 dev->field = V4L2_FIELD_INTERLACED;

 INIT_LIST_HEAD(&dev->active);
 dev->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 dev->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 dev->vidq.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ | VB2_DMABUF;
 dev->vidq.ops = &tw68_video_qops;
 dev->vidq.mem_ops = &vb2_dma_sg_memops;
 dev->vidq.drv_priv = dev;
 dev->vidq.gfp_flags = __GFP_DMA32 | __GFP_KSWAPD_RECLAIM;
 dev->vidq.buf_struct_size = sizeof(struct tw68_buf);
 dev->vidq.lock = &dev->lock;
 dev->vidq.min_buffers_needed = 2;
 dev->vidq.dev = &dev->pci->dev;
 ret = vb2_queue_init(&dev->vidq);
 if (ret)
  return ret;
 dev->vdev = tw68_video_template;
 dev->vdev.v4l2_dev = &dev->v4l2_dev;
 dev->vdev.lock = &dev->lock;
 dev->vdev.queue = &dev->vidq;
 video_set_drvdata(&dev->vdev, dev);
 return video_register_device(&dev->vdev, VFL_TYPE_GRABBER, video_nr);
}
