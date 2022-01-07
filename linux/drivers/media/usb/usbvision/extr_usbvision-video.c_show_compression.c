
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_usbvision {scalar_t__ isoc_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ISOC_MODE_COMPRESS ;
 char* YES_NO (int) ;
 int sprintf (char*,char*,char*) ;
 struct video_device* to_video_device (struct device*) ;
 struct usb_usbvision* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static ssize_t show_compression(struct device *cd,
    struct device_attribute *attr, char *buf)
{
 struct video_device *vdev = to_video_device(cd);
 struct usb_usbvision *usbvision = video_get_drvdata(vdev);
 return sprintf(buf, "%s\n",
         YES_NO(usbvision->isoc_mode == ISOC_MODE_COMPRESS));
}
