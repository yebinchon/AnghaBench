
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {scalar_t__ type; int queue; int vdev; TYPE_1__* chain; } ;
struct uvc_device {int dummy; } ;
struct TYPE_2__ {int caps; } ;


 int KERN_ERR ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_META_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int uvc_debugfs_init_stream (struct uvc_streaming*) ;
 int uvc_fops ;
 int uvc_ioctl_ops ;
 int uvc_printk (int ,char*,int) ;
 int uvc_register_video_device (struct uvc_device*,struct uvc_streaming*,int *,int *,scalar_t__,int *,int *) ;
 int uvc_video_init (struct uvc_streaming*) ;

__attribute__((used)) static int uvc_register_video(struct uvc_device *dev,
  struct uvc_streaming *stream)
{
 int ret;


 ret = uvc_video_init(stream);
 if (ret < 0) {
  uvc_printk(KERN_ERR, "Failed to initialize the device (%d).\n",
      ret);
  return ret;
 }

 if (stream->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  stream->chain->caps |= V4L2_CAP_VIDEO_CAPTURE
   | V4L2_CAP_META_CAPTURE;
 else
  stream->chain->caps |= V4L2_CAP_VIDEO_OUTPUT;

 uvc_debugfs_init_stream(stream);


 return uvc_register_video_device(dev, stream, &stream->vdev,
      &stream->queue, stream->type,
      &uvc_fops, &uvc_ioctl_ops);
}
