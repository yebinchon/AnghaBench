
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_usbvision {int dummy; } ;
struct device {int dummy; } ;


 struct video_device* to_video_device (struct device*) ;
 struct usb_usbvision* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static inline struct usb_usbvision *cd_to_usbvision(struct device *cd)
{
 struct video_device *vdev = to_video_device(cd);
 return video_get_drvdata(vdev);
}
