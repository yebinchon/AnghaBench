
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int index; int tuner; void* std; int name; void* type; } ;
struct usb_usbvision {int video_inputs; size_t dev_model; scalar_t__ have_tuner; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int video_channels; } ;


 int EINVAL ;
 void* USBVISION_NORMS ;
 void* V4L2_INPUT_TYPE_CAMERA ;
 void* V4L2_INPUT_TYPE_TUNER ;
 int strscpy (int ,char*,int) ;
 TYPE_1__* usbvision_device_data ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *vi)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 int chan;

 if (vi->index >= usbvision->video_inputs)
  return -EINVAL;
 if (usbvision->have_tuner)
  chan = vi->index;
 else
  chan = vi->index + 1;



 switch (chan) {
 case 0:
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4) {
   strscpy(vi->name, "White Video Input", sizeof(vi->name));
  } else {
   strscpy(vi->name, "Television", sizeof(vi->name));
   vi->type = V4L2_INPUT_TYPE_TUNER;
   vi->tuner = chan;
   vi->std = USBVISION_NORMS;
  }
  break;
 case 1:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4)
   strscpy(vi->name, "Green Video Input", sizeof(vi->name));
  else
   strscpy(vi->name, "Composite Video Input",
    sizeof(vi->name));
  vi->std = USBVISION_NORMS;
  break;
 case 2:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  if (usbvision_device_data[usbvision->dev_model].video_channels == 4)
   strscpy(vi->name, "Yellow Video Input", sizeof(vi->name));
  else
   strscpy(vi->name, "S-Video Input", sizeof(vi->name));
  vi->std = USBVISION_NORMS;
  break;
 case 3:
  vi->type = V4L2_INPUT_TYPE_CAMERA;
  strscpy(vi->name, "Red Video Input", sizeof(vi->name));
  vi->std = USBVISION_NORMS;
  break;
 }
 return 0;
}
