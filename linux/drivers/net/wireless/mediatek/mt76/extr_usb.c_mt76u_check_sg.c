
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {scalar_t__ speed; TYPE_1__* bus; } ;
struct mt76_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ sg_tablesize; scalar_t__ no_sg_constraint; } ;


 scalar_t__ USB_SPEED_WIRELESS ;
 int disable_usb_sg ;
 struct usb_device* to_usb_device (int ) ;

__attribute__((used)) static bool mt76u_check_sg(struct mt76_dev *dev)
{
 struct usb_device *udev = to_usb_device(dev->dev);

 return (!disable_usb_sg && udev->bus->sg_tablesize > 0 &&
  (udev->bus->no_sg_constraint ||
   udev->speed == USB_SPEED_WIRELESS));
}
