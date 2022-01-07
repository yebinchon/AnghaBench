
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ar9170 {int fw_load_wait; struct usb_device* udev; struct usb_interface* intf; } ;


 int carl9170_driver ;
 int complete (int *) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_put_intf (struct usb_interface*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static void carl9170_usb_firmware_failed(struct ar9170 *ar)
{




 struct usb_interface *intf = ar->intf;
 struct usb_device *udev = ar->udev;

 complete(&ar->fw_load_wait);

 ar = ((void*)0);


 usb_lock_device(udev);
 usb_driver_release_interface(&carl9170_driver, intf);
 usb_unlock_device(udev);

 usb_put_intf(intf);
}
