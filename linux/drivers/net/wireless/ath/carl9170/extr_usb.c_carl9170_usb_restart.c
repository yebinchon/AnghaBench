
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9170 {int cmd_seq; int usb_tasklet; TYPE_1__* intf; } ;
struct TYPE_2__ {scalar_t__ condition; } ;


 scalar_t__ USB_INTERFACE_BOUND ;
 int carl9170_reboot (struct ar9170*) ;
 int carl9170_usb_cancel_urbs (struct ar9170*) ;
 int carl9170_usb_load_firmware (struct ar9170*) ;
 int carl9170_usb_open (struct ar9170*) ;
 int carl9170_usb_stop (struct ar9170*) ;
 int msleep (int) ;
 int tasklet_schedule (int *) ;

int carl9170_usb_restart(struct ar9170 *ar)
{
 int err = 0;

 if (ar->intf->condition != USB_INTERFACE_BOUND)
  return 0;







 ar->cmd_seq = -2;

 err = carl9170_reboot(ar);

 carl9170_usb_stop(ar);

 if (err)
  goto err_out;

 tasklet_schedule(&ar->usb_tasklet);


 msleep(1100);

 err = carl9170_usb_open(ar);
 if (err)
  goto err_out;

 err = carl9170_usb_load_firmware(ar);
 if (err)
  goto err_out;

 return 0;

err_out:
 carl9170_usb_cancel_urbs(ar);
 return err;
}
