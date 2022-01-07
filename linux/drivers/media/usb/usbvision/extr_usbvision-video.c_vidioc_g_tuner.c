
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ type; int name; scalar_t__ index; } ;
struct usb_usbvision {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *vt)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 if (vt->index)
  return -EINVAL;
 if (vt->type == V4L2_TUNER_RADIO)
  strscpy(vt->name, "Radio", sizeof(vt->name));
 else
  strscpy(vt->name, "Television", sizeof(vt->name));


 call_all(usbvision, tuner, g_tuner, vt);

 return 0;
}
