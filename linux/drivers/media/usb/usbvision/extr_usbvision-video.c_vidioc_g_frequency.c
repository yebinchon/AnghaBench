
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ type; int frequency; scalar_t__ tuner; } ;
struct usb_usbvision {int tv_freq; int radio_freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *freq)
{
 struct usb_usbvision *usbvision = video_drvdata(file);


 if (freq->tuner)
  return -EINVAL;
 if (freq->type == V4L2_TUNER_RADIO)
  freq->frequency = usbvision->radio_freq;
 else
  freq->frequency = usbvision->tv_freq;

 return 0;
}
