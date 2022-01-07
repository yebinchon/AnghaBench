
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {int type; int io_modes; int buf_struct_size; int minor; int device_caps; int name; int entity; int * lock; int release; struct v4l2_device* v4l2_dev; int * ioctl_ops; int * fops; struct video_device* queue; int * dev; int timestamp_flags; struct fimc_isp* drv_priv; int * mem_ops; int * ops; } ;
struct vb2_queue {int type; int io_modes; int buf_struct_size; int minor; int device_caps; int name; int entity; int * lock; int release; struct v4l2_device* v4l2_dev; int * ioctl_ops; int * fops; struct vb2_queue* queue; int * dev; int timestamp_flags; struct fimc_isp* drv_priv; int * mem_ops; int * ops; } ;
struct v4l2_device {int dummy; } ;
struct isp_video_buf {int dummy; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {struct video_device vdev; } ;
struct TYPE_6__ {int colorspace; int pixelformat; int height; int width; } ;
struct fimc_is_video {TYPE_4__ pad; TYPE_3__ ve; scalar_t__ reqbufs_count; TYPE_1__ pixfmt; TYPE_5__* format; int active_buf_q; int pending_buf_q; struct video_device vb_queue; } ;
struct fimc_isp {int video_lock; TYPE_2__* pdev; struct fimc_is_video video_capture; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_10__ {int fourcc; } ;
struct TYPE_7__ {int dev; } ;


 int ENOSYS ;
 int INIT_LIST_HEAD (int *) ;
 int IS_DEFAULT_HEIGHT ;
 int IS_DEFAULT_WIDTH ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int V4L2_COLORSPACE_SRGB ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 TYPE_5__* fimc_isp_find_format (int *,int *,int ) ;
 int isp_video_capture_qops ;
 int isp_video_fops ;
 int isp_video_ioctl_ops ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int,TYPE_4__*) ;
 int memset (struct video_device*,int ,int) ;
 int mutex_init (int *) ;
 int strscpy (int ,char*,int) ;
 int v4l2_info (struct v4l2_device*,char*,int ,int ) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct video_device*) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct fimc_isp*) ;

int fimc_isp_video_device_register(struct fimc_isp *isp,
       struct v4l2_device *v4l2_dev,
       enum v4l2_buf_type type)
{
 struct vb2_queue *q = &isp->video_capture.vb_queue;
 struct fimc_is_video *iv;
 struct video_device *vdev;
 int ret;

 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  iv = &isp->video_capture;
 else
  return -ENOSYS;

 mutex_init(&isp->video_lock);
 INIT_LIST_HEAD(&iv->pending_buf_q);
 INIT_LIST_HEAD(&iv->active_buf_q);
 iv->format = fimc_isp_find_format(((void*)0), ((void*)0), 0);
 iv->pixfmt.width = IS_DEFAULT_WIDTH;
 iv->pixfmt.height = IS_DEFAULT_HEIGHT;
 iv->pixfmt.pixelformat = iv->format->fourcc;
 iv->pixfmt.colorspace = V4L2_COLORSPACE_SRGB;
 iv->reqbufs_count = 0;

 memset(q, 0, sizeof(*q));
 q->type = type;
 q->io_modes = VB2_MMAP | VB2_USERPTR;
 q->ops = &isp_video_capture_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct isp_video_buf);
 q->drv_priv = isp;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &isp->video_lock;
 q->dev = &isp->pdev->dev;

 ret = vb2_queue_init(q);
 if (ret < 0)
  return ret;

 vdev = &iv->ve.vdev;
 memset(vdev, 0, sizeof(*vdev));
 strscpy(vdev->name, "fimc-is-isp.capture", sizeof(vdev->name));
 vdev->queue = q;
 vdev->fops = &isp_video_fops;
 vdev->ioctl_ops = &isp_video_ioctl_ops;
 vdev->v4l2_dev = v4l2_dev;
 vdev->minor = -1;
 vdev->release = video_device_release_empty;
 vdev->lock = &isp->video_lock;
 vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE_MPLANE;

 iv->pad.flags = MEDIA_PAD_FL_SINK;
 ret = media_entity_pads_init(&vdev->entity, 1, &iv->pad);
 if (ret < 0)
  return ret;

 video_set_drvdata(vdev, isp);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  media_entity_cleanup(&vdev->entity);
  return ret;
 }

 v4l2_info(v4l2_dev, "Registered %s as /dev/%s\n",
    vdev->name, video_device_node_name(vdev));

 return 0;
}
