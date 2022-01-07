
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct TYPE_2__ {scalar_t__ has_radio; } ;
struct tm6000_core {scalar_t__ tuner_type; TYPE_1__ caps; int udev; } ;
struct file {int dummy; } ;


 scalar_t__ TUNER_ABSENT ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct tm6000_core *dev = ((struct tm6000_fh *)priv)->dev;

 strscpy(cap->driver, "tm6000", sizeof(cap->driver));
 strscpy(cap->card, "Trident TVMaster TM5600/6000/6010",
  sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
       V4L2_CAP_DEVICE_CAPS;
 if (dev->tuner_type != TUNER_ABSENT)
  cap->capabilities |= V4L2_CAP_TUNER;
 if (dev->caps.has_radio)
  cap->capabilities |= V4L2_CAP_RADIO;

 return 0;
}
