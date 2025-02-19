
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ar9170 {int fw_load_wait; struct usb_interface* intf; } ;


 int carl9170_parse_firmware (struct ar9170*) ;
 int carl9170_register (struct ar9170*) ;
 int carl9170_release_firmware (struct ar9170*) ;
 int carl9170_usb_cancel_urbs (struct ar9170*) ;
 int carl9170_usb_firmware_failed (struct ar9170*) ;
 int carl9170_usb_init_device (struct ar9170*) ;
 int carl9170_usb_stop (struct ar9170*) ;
 int complete (int *) ;
 int usb_put_intf (struct usb_interface*) ;

__attribute__((used)) static void carl9170_usb_firmware_finish(struct ar9170 *ar)
{
 struct usb_interface *intf = ar->intf;
 int err;

 err = carl9170_parse_firmware(ar);
 if (err)
  goto err_freefw;

 err = carl9170_usb_init_device(ar);
 if (err)
  goto err_freefw;

 err = carl9170_register(ar);

 carl9170_usb_stop(ar);
 if (err)
  goto err_unrx;

 complete(&ar->fw_load_wait);
 usb_put_intf(intf);
 return;

err_unrx:
 carl9170_usb_cancel_urbs(ar);

err_freefw:
 carl9170_release_firmware(ar);
 carl9170_usb_firmware_failed(ar);
}
