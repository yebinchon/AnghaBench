
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int cmd_seq; int mutex; } ;


 int carl9170_usb_cancel_urbs (struct ar9170*) ;
 int carl9170_usb_init_rx_bulk_urbs (struct ar9170*) ;
 int carl9170_usb_load_firmware (struct ar9170*) ;
 int carl9170_usb_open (struct ar9170*) ;
 int carl9170_usb_send_rx_irq_urb (struct ar9170*) ;
 int carl9170_usb_stop (struct ar9170*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int carl9170_usb_init_device(struct ar9170 *ar)
{
 int err;
 ar->cmd_seq = -2;

 err = carl9170_usb_send_rx_irq_urb(ar);
 if (err)
  goto err_out;

 err = carl9170_usb_init_rx_bulk_urbs(ar);
 if (err)
  goto err_unrx;

 err = carl9170_usb_open(ar);
 if (err)
  goto err_unrx;

 mutex_lock(&ar->mutex);
 err = carl9170_usb_load_firmware(ar);
 mutex_unlock(&ar->mutex);
 if (err)
  goto err_stop;

 return 0;

err_stop:
 carl9170_usb_stop(ar);

err_unrx:
 carl9170_usb_cancel_urbs(ar);

err_out:
 return err;
}
