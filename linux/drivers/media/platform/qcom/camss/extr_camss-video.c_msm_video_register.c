
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int device_caps; int entity; int name; int * lock; struct vb2_queue* queue; int vfl_dir; struct v4l2_device* v4l2_dev; int release; int * ioctl_ops; int * fops; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int * lock; int dev; int timestamp_flags; int type; int * ops; int * mem_ops; struct camss_video* drv_priv; } ;
struct v4l2_device {int dev; } ;
struct media_pad {int flags; } ;
struct camss_video {int q_lock; struct vb2_queue vb2_q; int lock; TYPE_1__* camss; void* nformats; void* formats; struct video_device vdev; struct media_pad pad; } ;
struct camss_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ version; int ref_count; int dev; } ;


 void* ARRAY_SIZE (void*) ;
 scalar_t__ CAMSS_8x16 ;
 scalar_t__ CAMSS_8x96 ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int atomic_inc (int *) ;
 int dev_err (int ,char*,int) ;
 void* formats_pix_8x16 ;
 void* formats_pix_8x96 ;
 void* formats_rdi_8x16 ;
 void* formats_rdi_8x96 ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int,struct media_pad*) ;
 int msm_vid_fops ;
 int msm_vid_ioctl_ops ;
 int msm_video_init_format (struct camss_video*) ;
 int msm_video_release ;
 int msm_video_vb2_q_ops ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int strscpy (int ,char const*,int) ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_queue_release (struct vb2_queue*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct camss_video*) ;

int msm_video_register(struct camss_video *video, struct v4l2_device *v4l2_dev,
         const char *name, int is_pix)
{
 struct media_pad *pad = &video->pad;
 struct video_device *vdev;
 struct vb2_queue *q;
 int ret;

 vdev = &video->vdev;

 mutex_init(&video->q_lock);

 q = &video->vb2_q;
 q->drv_priv = video;
 q->mem_ops = &vb2_dma_sg_memops;
 q->ops = &msm_video_vb2_q_ops;
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 q->io_modes = VB2_DMABUF | VB2_MMAP | VB2_READ;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->buf_struct_size = sizeof(struct camss_buffer);
 q->dev = video->camss->dev;
 q->lock = &video->q_lock;
 ret = vb2_queue_init(q);
 if (ret < 0) {
  dev_err(v4l2_dev->dev, "Failed to init vb2 queue: %d\n", ret);
  goto error_vb2_init;
 }

 pad->flags = MEDIA_PAD_FL_SINK;
 ret = media_entity_pads_init(&vdev->entity, 1, pad);
 if (ret < 0) {
  dev_err(v4l2_dev->dev, "Failed to init video entity: %d\n",
   ret);
  goto error_media_init;
 }

 mutex_init(&video->lock);

 if (video->camss->version == CAMSS_8x16) {
  if (is_pix) {
   video->formats = formats_pix_8x16;
   video->nformats = ARRAY_SIZE(formats_pix_8x16);
  } else {
   video->formats = formats_rdi_8x16;
   video->nformats = ARRAY_SIZE(formats_rdi_8x16);
  }
 } else if (video->camss->version == CAMSS_8x96) {
  if (is_pix) {
   video->formats = formats_pix_8x96;
   video->nformats = ARRAY_SIZE(formats_pix_8x96);
  } else {
   video->formats = formats_rdi_8x96;
   video->nformats = ARRAY_SIZE(formats_rdi_8x96);
  }
 } else {
  goto error_video_register;
 }

 ret = msm_video_init_format(video);
 if (ret < 0) {
  dev_err(v4l2_dev->dev, "Failed to init format: %d\n", ret);
  goto error_video_register;
 }

 vdev->fops = &msm_vid_fops;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE | V4L2_CAP_STREAMING |
       V4L2_CAP_READWRITE;
 vdev->ioctl_ops = &msm_vid_ioctl_ops;
 vdev->release = msm_video_release;
 vdev->v4l2_dev = v4l2_dev;
 vdev->vfl_dir = VFL_DIR_RX;
 vdev->queue = &video->vb2_q;
 vdev->lock = &video->lock;
 strscpy(vdev->name, name, sizeof(vdev->name));

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_err(v4l2_dev->dev, "Failed to register video device: %d\n",
   ret);
  goto error_video_register;
 }

 video_set_drvdata(vdev, video);
 atomic_inc(&video->camss->ref_count);

 return 0;

error_video_register:
 media_entity_cleanup(&vdev->entity);
 mutex_destroy(&video->lock);
error_media_init:
 vb2_queue_release(&video->vb2_q);
error_vb2_init:
 mutex_destroy(&video->q_lock);

 return ret;
}
