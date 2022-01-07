
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int min_buffers_needed; int buf_struct_size; int dev; int timestamp_flags; int * mem_ops; int * ops; struct sun4i_csi* drv_priv; int * lock; int io_modes; int type; } ;
struct sun4i_csi_buffer {int dummy; } ;
struct sun4i_csi {int lock; int v4l; int dev; int ** current_buf; int buf_list; int qlock; struct vb2_queue queue; } ;


 int CSI_MAX_BUFFER ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int VB2_MMAP ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int devm_request_irq (int ,int,int ,int ,int ,struct sun4i_csi*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int sun4i_csi_irq ;
 int sun4i_csi_qops ;
 int v4l2_device_register (int ,int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_queue_release (struct vb2_queue*) ;

int sun4i_csi_dma_register(struct sun4i_csi *csi, int irq)
{
 struct vb2_queue *q = &csi->queue;
 int ret;
 int i;

 spin_lock_init(&csi->qlock);
 mutex_init(&csi->lock);

 INIT_LIST_HEAD(&csi->buf_list);
 for (i = 0; i < CSI_MAX_BUFFER; i++)
  csi->current_buf[i] = ((void*)0);

 q->min_buffers_needed = 3;
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 q->io_modes = VB2_MMAP;
 q->lock = &csi->lock;
 q->drv_priv = csi;
 q->buf_struct_size = sizeof(struct sun4i_csi_buffer);
 q->ops = &sun4i_csi_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->dev = csi->dev;

 ret = vb2_queue_init(q);
 if (ret < 0) {
  dev_err(csi->dev, "failed to initialize VB2 queue\n");
  goto err_free_mutex;
 }

 ret = v4l2_device_register(csi->dev, &csi->v4l);
 if (ret) {
  dev_err(csi->dev, "Couldn't register the v4l2 device\n");
  goto err_free_queue;
 }

 ret = devm_request_irq(csi->dev, irq, sun4i_csi_irq, 0,
          dev_name(csi->dev), csi);
 if (ret) {
  dev_err(csi->dev, "Couldn't register our interrupt\n");
  goto err_unregister_device;
 }

 return 0;

err_unregister_device:
 v4l2_device_unregister(&csi->v4l);

err_free_queue:
 vb2_queue_release(q);

err_free_mutex:
 mutex_destroy(&csi->lock);
 return ret;
}
