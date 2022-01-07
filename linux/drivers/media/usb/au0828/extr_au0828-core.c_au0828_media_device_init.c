
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct media_device {int dummy; } ;
struct au0828_dev {struct media_device* media_dev; } ;


 int ENOMEM ;
 int KBUILD_MODNAME ;
 int THIS_MODULE ;
 struct media_device* media_device_usb_allocate (struct usb_device*,int ,int ) ;

__attribute__((used)) static int au0828_media_device_init(struct au0828_dev *dev,
        struct usb_device *udev)
{
 return 0;
}
