
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vip_buffer {int dummy; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_5__ {int io_modes; int buf_struct_size; int * lock; int * dev; int timestamp_flags; int * mem_ops; int * ops; struct sta2x11_vip* drv_priv; int type; } ;
struct sta2x11_vip {int lock; int buffer_list; TYPE_2__ vb_vidq; int v4l_lock; TYPE_1__* pdev; int v4l2_dev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_MMAP ;
 int VB2_READ ;
 int dma_set_coherent_mask (int *,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int spin_lock_init (int *) ;
 int v4l2_err (int *,char*) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (TYPE_2__*) ;
 int vip_video_qops ;

__attribute__((used)) static int sta2x11_vip_init_buffer(struct sta2x11_vip *vip)
{
 int err;

 err = dma_set_coherent_mask(&vip->pdev->dev, DMA_BIT_MASK(29));
 if (err) {
  v4l2_err(&vip->v4l2_dev, "Cannot configure coherent mask");
  return err;
 }
 memset(&vip->vb_vidq, 0, sizeof(struct vb2_queue));
 vip->vb_vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vip->vb_vidq.io_modes = VB2_MMAP | VB2_READ;
 vip->vb_vidq.drv_priv = vip;
 vip->vb_vidq.buf_struct_size = sizeof(struct vip_buffer);
 vip->vb_vidq.ops = &vip_video_qops;
 vip->vb_vidq.mem_ops = &vb2_dma_contig_memops;
 vip->vb_vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 vip->vb_vidq.dev = &vip->pdev->dev;
 vip->vb_vidq.lock = &vip->v4l_lock;
 err = vb2_queue_init(&vip->vb_vidq);
 if (err)
  return err;
 INIT_LIST_HEAD(&vip->buffer_list);
 spin_lock_init(&vip->lock);
 return 0;
}
