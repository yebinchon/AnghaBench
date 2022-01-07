
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int io_modes; int buf_struct_size; int * lock; int * mem_ops; int * ops; int dev; int timestamp_flags; struct pxa_camera_dev* drv_priv; int type; } ;
struct TYPE_2__ {int dev; } ;
struct pxa_camera_dev {int mlock; TYPE_1__ v4l2_dev; struct vb2_queue vb2_vq; } ;
struct pxa_buffer {int dummy; } ;


 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int dev_dbg (int ,char*,struct vb2_queue*,int) ;
 int memset (struct vb2_queue*,int ,int) ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int pxac_vb2_ops ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (struct vb2_queue*) ;

__attribute__((used)) static int pxa_camera_init_videobuf2(struct pxa_camera_dev *pcdev)
{
 int ret;
 struct vb2_queue *vq = &pcdev->vb2_vq;

 memset(vq, 0, sizeof(*vq));
 vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vq->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 vq->drv_priv = pcdev;
 vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 vq->buf_struct_size = sizeof(struct pxa_buffer);
 vq->dev = pcdev->v4l2_dev.dev;

 vq->ops = &pxac_vb2_ops;
 vq->mem_ops = &vb2_dma_sg_memops;
 vq->lock = &pcdev->mlock;

 ret = vb2_queue_init(vq);
 dev_dbg(pcdev_to_dev(pcdev),
   "vb2_queue_init(vq=%p): %d\n", vq, ret);

 return ret;
}
