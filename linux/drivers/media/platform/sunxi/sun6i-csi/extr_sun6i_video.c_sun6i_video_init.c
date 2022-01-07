
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * ops; } ;
struct video_device {int device_caps; TYPE_3__ entity; int * lock; struct vb2_queue* queue; int * v4l2_dev; int vfl_dir; int vfl_type; int * ioctl_ops; int * fops; int release; int name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct sun6i_video* drv_priv; void* type; } ;
struct TYPE_6__ {int width; int height; int field; int pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; void* type; int member_0; } ;
struct TYPE_9__ {int flags; } ;
struct sun6i_video {int lock; struct video_device vdev; struct vb2_queue vb2_vidq; scalar_t__ sequence; int dma_queue_lock; int dma_queue; TYPE_4__ pad; struct sun6i_csi* csi; } ;
struct sun6i_csi_buffer {int dummy; } ;
struct sun6i_csi {int v4l2_dev; int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int MEDIA_PAD_FL_MUST_CONNECT ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int media_entity_cleanup (TYPE_3__*) ;
 int media_entity_pads_init (TYPE_3__*,int,TYPE_4__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char const*,int) ;
 int sun6i_csi_vb2_ops ;
 int sun6i_video_fops ;
 int sun6i_video_ioctl_ops ;
 int sun6i_video_media_ops ;
 int sun6i_video_set_fmt (struct sun6i_video*,struct v4l2_format*) ;
 int * supported_pixformats ;
 int v4l2_err (int *,char*,int) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_queue_release (struct vb2_queue*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct sun6i_video*) ;

int sun6i_video_init(struct sun6i_video *video, struct sun6i_csi *csi,
       const char *name)
{
 struct video_device *vdev = &video->vdev;
 struct vb2_queue *vidq = &video->vb2_vidq;
 struct v4l2_format fmt = { 0 };
 int ret;

 video->csi = csi;


 video->pad.flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT;
 vdev->entity.ops = &sun6i_video_media_ops;
 ret = media_entity_pads_init(&vdev->entity, 1, &video->pad);
 if (ret < 0)
  return ret;

 mutex_init(&video->lock);

 INIT_LIST_HEAD(&video->dma_queue);
 spin_lock_init(&video->dma_queue_lock);

 video->sequence = 0;


 fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 fmt.fmt.pix.pixelformat = supported_pixformats[0];
 fmt.fmt.pix.width = 1280;
 fmt.fmt.pix.height = 720;
 fmt.fmt.pix.field = V4L2_FIELD_NONE;
 sun6i_video_set_fmt(video, &fmt);


 vidq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vidq->io_modes = VB2_MMAP | VB2_DMABUF;
 vidq->drv_priv = video;
 vidq->buf_struct_size = sizeof(struct sun6i_csi_buffer);
 vidq->ops = &sun6i_csi_vb2_ops;
 vidq->mem_ops = &vb2_dma_contig_memops;
 vidq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 vidq->lock = &video->lock;

 vidq->min_buffers_needed = 3;
 vidq->dev = csi->dev;

 ret = vb2_queue_init(vidq);
 if (ret) {
  v4l2_err(&csi->v4l2_dev, "vb2_queue_init failed: %d\n", ret);
  goto clean_entity;
 }


 strscpy(vdev->name, name, sizeof(vdev->name));
 vdev->release = video_device_release_empty;
 vdev->fops = &sun6i_video_fops;
 vdev->ioctl_ops = &sun6i_video_ioctl_ops;
 vdev->vfl_type = VFL_TYPE_GRABBER;
 vdev->vfl_dir = VFL_DIR_RX;
 vdev->v4l2_dev = &csi->v4l2_dev;
 vdev->queue = vidq;
 vdev->lock = &video->lock;
 vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;
 video_set_drvdata(vdev, video);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  v4l2_err(&csi->v4l2_dev,
    "video_register_device failed: %d\n", ret);
  goto release_vb2;
 }

 return 0;

release_vb2:
 vb2_queue_release(&video->vb2_vidq);
clean_entity:
 media_entity_cleanup(&video->vdev.entity);
 mutex_destroy(&video->lock);
 return ret;
}
