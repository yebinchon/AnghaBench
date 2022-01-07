
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct usb_usbvision {size_t dev_model; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* model_string; } ;


 int sprintf (char*,char*,char*) ;
 struct video_device* to_video_device (struct device*) ;
 TYPE_1__* usbvision_device_data ;
 struct usb_usbvision* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static ssize_t show_model(struct device *cd,
     struct device_attribute *attr, char *buf)
{
 struct video_device *vdev = to_video_device(cd);
 struct usb_usbvision *usbvision = video_get_drvdata(vdev);
 return sprintf(buf, "%s\n",
         usbvision_device_data[usbvision->dev_model].model_string);
}
