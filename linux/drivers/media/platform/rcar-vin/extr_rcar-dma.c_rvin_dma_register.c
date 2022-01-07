
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int dev; int timestamp_flags; int * mem_ops; int * ops; struct rvin_dev* drv_priv; int * lock; int type; } ;
struct rvin_dev {int dev; int lock; int ** queue_buf; int state; int qlock; int buf_list; int v4l2_dev; struct vb2_queue queue; } ;
struct rvin_buffer {int dummy; } ;


 int HW_BUFFER_NUM ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int STOPPED ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int devm_request_irq (int ,int,int ,int ,int ,struct rvin_dev*) ;
 int mutex_init (int *) ;
 int rvin_dma_unregister (struct rvin_dev*) ;
 int rvin_irq ;
 int rvin_qops ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int ,int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vin_err (struct rvin_dev*,char*) ;

int rvin_dma_register(struct rvin_dev *vin, int irq)
{
 struct vb2_queue *q = &vin->queue;
 int i, ret;


 ret = v4l2_device_register(vin->dev, &vin->v4l2_dev);
 if (ret)
  return ret;

 mutex_init(&vin->lock);
 INIT_LIST_HEAD(&vin->buf_list);

 spin_lock_init(&vin->qlock);

 vin->state = STOPPED;

 for (i = 0; i < HW_BUFFER_NUM; i++)
  vin->queue_buf[i] = ((void*)0);


 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
 q->lock = &vin->lock;
 q->drv_priv = vin;
 q->buf_struct_size = sizeof(struct rvin_buffer);
 q->ops = &rvin_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->min_buffers_needed = 4;
 q->dev = vin->dev;

 ret = vb2_queue_init(q);
 if (ret < 0) {
  vin_err(vin, "failed to initialize VB2 queue\n");
  goto error;
 }


 ret = devm_request_irq(vin->dev, irq, rvin_irq, IRQF_SHARED,
          KBUILD_MODNAME, vin);
 if (ret) {
  vin_err(vin, "failed to request irq\n");
  goto error;
 }

 return 0;
error:
 rvin_dma_unregister(vin);

 return ret;
}
