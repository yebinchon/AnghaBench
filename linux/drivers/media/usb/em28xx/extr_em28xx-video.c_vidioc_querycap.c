
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct usb_device {int dummy; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int radio_dev; int vbi_dev; } ;
struct em28xx {size_t model; scalar_t__ int_audio_type; scalar_t__ tuner_type; int intf; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ EM28XX_INT_AUDIO_NONE ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__* em28xx_boards ;
 struct usb_device* interface_to_usbdev (int ) ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 struct em28xx* video_drvdata (struct file*) ;
 scalar_t__ video_is_registered (int *) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct em28xx *dev = video_drvdata(file);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;
 struct usb_device *udev = interface_to_usbdev(dev->intf);

 strscpy(cap->driver, "em28xx", sizeof(cap->driver));
 strscpy(cap->card, em28xx_boards[dev->model].name, sizeof(cap->card));
 usb_make_path(udev, cap->bus_info, sizeof(cap->bus_info));

 cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_READWRITE |
       V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
 if (dev->int_audio_type != EM28XX_INT_AUDIO_NONE)
  cap->capabilities |= V4L2_CAP_AUDIO;
 if (dev->tuner_type != TUNER_ABSENT)
  cap->capabilities |= V4L2_CAP_TUNER;
 if (video_is_registered(&v4l2->vbi_dev))
  cap->capabilities |= V4L2_CAP_VBI_CAPTURE;
 if (video_is_registered(&v4l2->radio_dev))
  cap->capabilities |= V4L2_CAP_RADIO;
 return 0;
}
