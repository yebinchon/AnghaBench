
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fh {TYPE_2__* vdev; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct uvc_video_chain {int caps; } ;
struct uvc_streaming {TYPE_1__* dev; struct uvc_video_chain* chain; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int udev; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_STREAMING ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct uvc_streaming* video_get_drvdata (TYPE_2__*) ;

__attribute__((used)) static int uvc_meta_v4l2_querycap(struct file *file, void *fh,
      struct v4l2_capability *cap)
{
 struct v4l2_fh *vfh = file->private_data;
 struct uvc_streaming *stream = video_get_drvdata(vfh->vdev);
 struct uvc_video_chain *chain = stream->chain;

 strscpy(cap->driver, "uvcvideo", sizeof(cap->driver));
 strscpy(cap->card, vfh->vdev->name, sizeof(cap->card));
 usb_make_path(stream->dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_STREAMING
     | chain->caps;

 return 0;
}
