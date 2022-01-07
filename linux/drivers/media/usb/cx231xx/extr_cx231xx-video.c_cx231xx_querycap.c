
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {size_t model; scalar_t__ tuner_type; int radio_dev; int udev; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ TUNER_ABSENT ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__* cx231xx_boards ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 scalar_t__ video_is_registered (int *) ;

int cx231xx_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 strscpy(cap->driver, "cx231xx", sizeof(cap->driver));
 strscpy(cap->card, cx231xx_boards[dev->model].name, sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->capabilities = V4L2_CAP_READWRITE |
  V4L2_CAP_VBI_CAPTURE | V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_STREAMING | V4L2_CAP_DEVICE_CAPS;
 if (video_is_registered(&dev->radio_dev))
  cap->capabilities |= V4L2_CAP_RADIO;
 if (dev->tuner_type != TUNER_ABSENT)
  cap->capabilities |= V4L2_CAP_TUNER;

 return 0;
}
