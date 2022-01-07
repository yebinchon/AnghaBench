
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int minor; int device_caps; int io_modes; int buf_struct_size; int name; int entity; int * dev; int * lock; int timestamp_flags; struct fimc_lite* drv_priv; int * mem_ops; int * ops; int type; struct video_device* queue; int release; int v4l2_dev; int * ioctl_ops; int * fops; } ;
struct vb2_queue {int minor; int device_caps; int io_modes; int buf_struct_size; int name; int entity; int * dev; int * lock; int timestamp_flags; struct fimc_lite* drv_priv; int * mem_ops; int * ops; int type; struct vb2_queue* queue; int release; int v4l2_dev; int * ioctl_ops; int * fops; } ;
struct v4l2_subdev {int v4l2_dev; } ;
struct flite_buffer {int dummy; } ;
struct TYPE_5__ {int * pipe; struct video_device vdev; } ;
struct TYPE_6__ {int flags; } ;
struct fimc_lite {int index; TYPE_2__ ve; TYPE_3__ vd_pad; TYPE_1__* pdev; int lock; int active_buf_q; int pending_buf_q; scalar_t__ reqbufs_count; int out_path; struct video_device vb_queue; } ;
struct TYPE_4__ {int dev; } ;


 int FIMC_IO_DMA ;
 int INIT_LIST_HEAD (int *) ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int atomic_set (int *,int ) ;
 int fimc_lite_fops ;
 int fimc_lite_ioctl_ops ;
 int fimc_lite_qops ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int,TYPE_3__*) ;
 int memset (struct video_device*,int ,int) ;
 int snprintf (int ,int,char*,int) ;
 int * v4l2_get_subdev_hostdata (struct v4l2_subdev*) ;
 struct fimc_lite* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (int ,char*,int ,int ) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct video_device*) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct fimc_lite*) ;

__attribute__((used)) static int fimc_lite_subdev_registered(struct v4l2_subdev *sd)
{
 struct fimc_lite *fimc = v4l2_get_subdevdata(sd);
 struct vb2_queue *q = &fimc->vb_queue;
 struct video_device *vfd = &fimc->ve.vdev;
 int ret;

 memset(vfd, 0, sizeof(*vfd));
 atomic_set(&fimc->out_path, FIMC_IO_DMA);

 snprintf(vfd->name, sizeof(vfd->name), "fimc-lite.%d.capture",
   fimc->index);

 vfd->fops = &fimc_lite_fops;
 vfd->ioctl_ops = &fimc_lite_ioctl_ops;
 vfd->v4l2_dev = sd->v4l2_dev;
 vfd->minor = -1;
 vfd->release = video_device_release_empty;
 vfd->queue = q;
 vfd->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE | V4L2_CAP_STREAMING;
 fimc->reqbufs_count = 0;

 INIT_LIST_HEAD(&fimc->pending_buf_q);
 INIT_LIST_HEAD(&fimc->active_buf_q);

 memset(q, 0, sizeof(*q));
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 q->io_modes = VB2_MMAP | VB2_USERPTR;
 q->ops = &fimc_lite_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct flite_buffer);
 q->drv_priv = fimc;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &fimc->lock;
 q->dev = &fimc->pdev->dev;

 ret = vb2_queue_init(q);
 if (ret < 0)
  return ret;

 fimc->vd_pad.flags = MEDIA_PAD_FL_SINK;
 ret = media_entity_pads_init(&vfd->entity, 1, &fimc->vd_pad);
 if (ret < 0)
  return ret;

 video_set_drvdata(vfd, fimc);
 fimc->ve.pipe = v4l2_get_subdev_hostdata(sd);

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  media_entity_cleanup(&vfd->entity);
  fimc->ve.pipe = ((void*)0);
  return ret;
 }

 v4l2_info(sd->v4l2_dev, "Registered %s as /dev/%s\n",
    vfd->name, video_device_node_name(vfd));
 return 0;
}
