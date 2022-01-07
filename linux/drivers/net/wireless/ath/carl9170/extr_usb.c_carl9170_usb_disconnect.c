
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ar9170 {int fw_load_wait; } ;


 scalar_t__ IS_INITIALIZED (struct ar9170*) ;
 scalar_t__ WARN_ON (int) ;
 int carl9170_free (struct ar9170*) ;
 int carl9170_reboot (struct ar9170*) ;
 int carl9170_release_firmware (struct ar9170*) ;
 int carl9170_unregister (struct ar9170*) ;
 int carl9170_usb_cancel_urbs (struct ar9170*) ;
 int carl9170_usb_stop (struct ar9170*) ;
 struct ar9170* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void carl9170_usb_disconnect(struct usb_interface *intf)
{
 struct ar9170 *ar = usb_get_intfdata(intf);

 if (WARN_ON(!ar))
  return;

 wait_for_completion(&ar->fw_load_wait);

 if (IS_INITIALIZED(ar)) {
  carl9170_reboot(ar);
  carl9170_usb_stop(ar);
 }

 carl9170_usb_cancel_urbs(ar);
 carl9170_unregister(ar);

 usb_set_intfdata(intf, ((void*)0));

 carl9170_release_firmware(ar);
 carl9170_free(ar);
}
