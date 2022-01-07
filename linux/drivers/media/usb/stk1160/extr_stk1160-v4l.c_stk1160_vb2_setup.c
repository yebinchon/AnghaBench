
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int io_modes; int buf_struct_size; int timestamp_flags; int * lock; int * mem_ops; int * ops; struct stk1160* drv_priv; int type; } ;
struct stk1160_buffer {int dummy; } ;
struct stk1160 {int avail_bufs; int vb_queue_lock; struct vb2_queue vb_vidq; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int stk1160_video_qops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_vmalloc_memops ;

int stk1160_vb2_setup(struct stk1160 *dev)
{
 int rc;
 struct vb2_queue *q;

 q = &dev->vb_vidq;
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_READ | VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 q->drv_priv = dev;
 q->buf_struct_size = sizeof(struct stk1160_buffer);
 q->ops = &stk1160_video_qops;
 q->mem_ops = &vb2_vmalloc_memops;
 q->lock = &dev->vb_queue_lock;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;

 rc = vb2_queue_init(q);
 if (rc < 0)
  return rc;


 INIT_LIST_HEAD(&dev->avail_bufs);

 return 0;
}
