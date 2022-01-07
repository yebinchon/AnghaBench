
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; } ;
struct TYPE_4__ {int io_modes; int buf_struct_size; int timestamp_flags; int * mem_ops; int * ops; struct rcar_drif_sdr* drv_priv; int type; } ;
struct rcar_drif_sdr {int v4l2_dev; TYPE_2__ notifier; int dev; TYPE_1__ vb_queue; int queued_bufs; int dma_lock; int queued_bufs_lock; int vb_queue_mutex; int v4l2_mutex; int hwbuf_size; } ;
struct rcar_drif_frame_buf {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int RCAR_DRIF_DEFAULT_HWBUF_SIZE ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_SDR_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int dev_err (int ,char*,...) ;
 int mutex_init (int *) ;
 int rcar_drif_notify_ops ;
 int rcar_drif_parse_subdevs (struct rcar_drif_sdr*) ;
 int rcar_drif_set_default_format (struct rcar_drif_sdr*) ;
 int rcar_drif_vb2_ops ;
 int spin_lock_init (int *) ;
 int v4l2_async_notifier_cleanup (TYPE_2__*) ;
 int v4l2_async_notifier_register (int *,TYPE_2__*) ;
 int v4l2_device_register (int ,int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_queue_init (TYPE_1__*) ;
 int vb2_vmalloc_memops ;

__attribute__((used)) static int rcar_drif_sdr_probe(struct rcar_drif_sdr *sdr)
{
 int ret;


 ret = rcar_drif_set_default_format(sdr);
 if (ret) {
  dev_err(sdr->dev, "failed to set default format\n");
  return ret;
 }


 sdr->hwbuf_size = RCAR_DRIF_DEFAULT_HWBUF_SIZE;

 mutex_init(&sdr->v4l2_mutex);
 mutex_init(&sdr->vb_queue_mutex);
 spin_lock_init(&sdr->queued_bufs_lock);
 spin_lock_init(&sdr->dma_lock);
 INIT_LIST_HEAD(&sdr->queued_bufs);


 sdr->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
 sdr->vb_queue.io_modes = VB2_READ | VB2_MMAP | VB2_DMABUF;
 sdr->vb_queue.drv_priv = sdr;
 sdr->vb_queue.buf_struct_size = sizeof(struct rcar_drif_frame_buf);
 sdr->vb_queue.ops = &rcar_drif_vb2_ops;
 sdr->vb_queue.mem_ops = &vb2_vmalloc_memops;
 sdr->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;


 ret = vb2_queue_init(&sdr->vb_queue);
 if (ret) {
  dev_err(sdr->dev, "failed: vb2_queue_init ret %d\n", ret);
  return ret;
 }


 ret = v4l2_device_register(sdr->dev, &sdr->v4l2_dev);
 if (ret) {
  dev_err(sdr->dev, "failed: v4l2_device_register ret %d\n", ret);
  return ret;
 }





 ret = rcar_drif_parse_subdevs(sdr);
 if (ret)
  goto error;

 sdr->notifier.ops = &rcar_drif_notify_ops;


 ret = v4l2_async_notifier_register(&sdr->v4l2_dev, &sdr->notifier);
 if (ret < 0) {
  dev_err(sdr->dev, "failed: notifier register ret %d\n", ret);
  goto cleanup;
 }

 return ret;

cleanup:
 v4l2_async_notifier_cleanup(&sdr->notifier);
error:
 v4l2_device_unregister(&sdr->v4l2_dev);

 return ret;
}
