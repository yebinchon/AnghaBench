
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct v4l2_frequency {scalar_t__ type; int frequency; scalar_t__ tuner; } const v4l2_frequency ;
struct usb_usbvision {int tv_freq; int radio_freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_frequency const*) ;
 int g_frequency ;
 int s_frequency ;
 int tuner ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *freq)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 struct v4l2_frequency new_freq = *freq;


 if (freq->tuner)
  return -EINVAL;

 call_all(usbvision, tuner, s_frequency, freq);
 call_all(usbvision, tuner, g_frequency, &new_freq);
 if (freq->type == V4L2_TUNER_RADIO)
  usbvision->radio_freq = new_freq.frequency;
 else
  usbvision->tv_freq = new_freq.frequency;

 return 0;
}
