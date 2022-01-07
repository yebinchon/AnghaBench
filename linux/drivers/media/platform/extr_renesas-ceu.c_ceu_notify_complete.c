
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; struct v4l2_device* v4l2_dev; int release; int * ioctl_ops; int * fops; int ctrl_handler; struct vb2_queue* queue; int * lock; int name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct ceu_device* drv_priv; int type; } ;
struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_device* v4l2_dev; } ;
struct TYPE_3__ {int dev; } ;
struct ceu_device {struct vb2_queue vb2_vq; int mlock; TYPE_2__* sd; scalar_t__ sd_index; TYPE_2__* subdevs; TYPE_1__ v4l2_dev; struct video_device vdev; } ;
struct ceu_buffer {int dummy; } ;
struct TYPE_4__ {struct v4l2_subdev* v4l2_sd; } ;


 int DRIVER_NAME ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VFL_TYPE_GRABBER ;
 int ceu_fops ;
 int ceu_init_mbus_fmt (struct ceu_device*) ;
 int ceu_ioctl_ops ;
 int ceu_set_default_fmt (struct ceu_device*) ;
 int ceu_vb2_ops ;
 int ceu_vdev_release ;
 int strscpy (int ,int ,int) ;
 int v4l2_err (struct v4l2_device*,char*,int) ;
 struct ceu_device* v4l2_to_ceu (struct v4l2_device*) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct ceu_device*) ;

__attribute__((used)) static int ceu_notify_complete(struct v4l2_async_notifier *notifier)
{
 struct v4l2_device *v4l2_dev = notifier->v4l2_dev;
 struct ceu_device *ceudev = v4l2_to_ceu(v4l2_dev);
 struct video_device *vdev = &ceudev->vdev;
 struct vb2_queue *q = &ceudev->vb2_vq;
 struct v4l2_subdev *v4l2_sd;
 int ret;


 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 q->io_modes = VB2_MMAP | VB2_DMABUF;
 q->drv_priv = ceudev;
 q->ops = &ceu_vb2_ops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct ceu_buffer);
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->min_buffers_needed = 2;
 q->lock = &ceudev->mlock;
 q->dev = ceudev->v4l2_dev.dev;

 ret = vb2_queue_init(q);
 if (ret)
  return ret;





 if (!ceudev->sd) {
  ceudev->sd = &ceudev->subdevs[0];
  ceudev->sd_index = 0;
 }

 v4l2_sd = ceudev->sd->v4l2_sd;

 ret = ceu_init_mbus_fmt(ceudev);
 if (ret)
  return ret;

 ret = ceu_set_default_fmt(ceudev);
 if (ret)
  return ret;


 strscpy(vdev->name, DRIVER_NAME, sizeof(vdev->name));
 vdev->v4l2_dev = v4l2_dev;
 vdev->lock = &ceudev->mlock;
 vdev->queue = &ceudev->vb2_vq;
 vdev->ctrl_handler = v4l2_sd->ctrl_handler;
 vdev->fops = &ceu_fops;
 vdev->ioctl_ops = &ceu_ioctl_ops;
 vdev->release = ceu_vdev_release;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE |
      V4L2_CAP_STREAMING;
 video_set_drvdata(vdev, ceudev);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  v4l2_err(vdev->v4l2_dev,
    "video_register_device failed: %d\n", ret);
  return ret;
 }

 return 0;
}
