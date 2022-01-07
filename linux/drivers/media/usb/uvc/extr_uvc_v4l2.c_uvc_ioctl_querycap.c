
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {char* name; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct uvc_video_chain {int caps; } ;
struct uvc_streaming {TYPE_1__* dev; } ;
struct uvc_fh {struct uvc_streaming* stream; struct uvc_video_chain* chain; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {int udev; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_STREAMING ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int uvc_ioctl_querycap(struct file *file, void *fh,
         struct v4l2_capability *cap)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_fh *handle = file->private_data;
 struct uvc_video_chain *chain = handle->chain;
 struct uvc_streaming *stream = handle->stream;

 strscpy(cap->driver, "uvcvideo", sizeof(cap->driver));
 strscpy(cap->card, vdev->name, sizeof(cap->card));
 usb_make_path(stream->dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_STREAMING
     | chain->caps;

 return 0;
}
