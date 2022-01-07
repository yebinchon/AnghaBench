
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9170 {int tx_cmd; int rx_pool; int rx_work; int usb_tasklet; int rx_anch; int tx_anch; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int CARL9170_UNKNOWN_STATE ;
 int carl9170_set_state (struct ar9170*,int ) ;
 int carl9170_usb_flush (struct ar9170*) ;
 int carl9170_usb_handle_tx_err (struct ar9170*) ;
 int dev_err (int *,char*) ;
 int tasklet_kill (int *) ;
 int usb_poison_anchored_urbs (int *) ;
 int usb_scuttle_anchored_urbs (int *) ;

__attribute__((used)) static void carl9170_usb_cancel_urbs(struct ar9170 *ar)
{
 int err;

 carl9170_set_state(ar, CARL9170_UNKNOWN_STATE);

 err = carl9170_usb_flush(ar);
 if (err)
  dev_err(&ar->udev->dev, "stuck tx urbs!\n");

 usb_poison_anchored_urbs(&ar->tx_anch);
 carl9170_usb_handle_tx_err(ar);
 usb_poison_anchored_urbs(&ar->rx_anch);

 tasklet_kill(&ar->usb_tasklet);

 usb_scuttle_anchored_urbs(&ar->rx_work);
 usb_scuttle_anchored_urbs(&ar->rx_pool);
 usb_scuttle_anchored_urbs(&ar->tx_cmd);
}
