
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct usb_usbvision {size_t dev_model; scalar_t__ have_tuner; int dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* model_string; scalar_t__ radio; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 TYPE_1__* usbvision_device_data ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *vc)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 strscpy(vc->driver, "USBVision", sizeof(vc->driver));
 strscpy(vc->card,
  usbvision_device_data[usbvision->dev_model].model_string,
  sizeof(vc->card));
 usb_make_path(usbvision->dev, vc->bus_info, sizeof(vc->bus_info));
 vc->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
      V4L2_CAP_STREAMING | V4L2_CAP_DEVICE_CAPS;
 if (usbvision_device_data[usbvision->dev_model].radio)
  vc->capabilities |= V4L2_CAP_RADIO;
 if (usbvision->have_tuner)
  vc->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
