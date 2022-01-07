
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int * queue; } ;
struct uvc_video_queue {int queue; } ;
struct TYPE_2__ {int format; struct uvc_video_queue queue; struct video_device vdev; } ;
struct uvc_streaming {TYPE_1__ meta; struct uvc_device* dev; } ;
struct uvc_device {int dummy; } ;


 int V4L2_BUF_TYPE_META_CAPTURE ;
 int V4L2_META_FMT_UVC ;
 int uvc_meta_fops ;
 int uvc_meta_ioctl_ops ;
 int uvc_register_video_device (struct uvc_device*,struct uvc_streaming*,struct video_device*,struct uvc_video_queue*,int ,int *,int *) ;

int uvc_meta_register(struct uvc_streaming *stream)
{
 struct uvc_device *dev = stream->dev;
 struct video_device *vdev = &stream->meta.vdev;
 struct uvc_video_queue *queue = &stream->meta.queue;

 stream->meta.format = V4L2_META_FMT_UVC;





 vdev->queue = &queue->queue;

 return uvc_register_video_device(dev, stream, vdev, queue,
      V4L2_BUF_TYPE_META_CAPTURE,
      &uvc_meta_fops, &uvc_meta_ioctl_ops);
}
