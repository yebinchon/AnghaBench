
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9170 {int cmd_wait; int cmd_lock; scalar_t__ readlen; int tx_anch; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int CARL9170_IDLE ;
 int CARL9170_STOPPED ;
 int carl9170_set_state_when (struct ar9170*,int ,int ) ;
 int carl9170_usb_flush (struct ar9170*) ;
 int carl9170_usb_handle_tx_err (struct ar9170*) ;
 int complete (int *) ;
 int dev_err (int *,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int usb_poison_anchored_urbs (int *) ;

void carl9170_usb_stop(struct ar9170 *ar)
{
 int ret;

 carl9170_set_state_when(ar, CARL9170_IDLE, CARL9170_STOPPED);

 ret = carl9170_usb_flush(ar);
 if (ret)
  dev_err(&ar->udev->dev, "kill pending tx urbs.\n");

 usb_poison_anchored_urbs(&ar->tx_anch);
 carl9170_usb_handle_tx_err(ar);


 spin_lock_bh(&ar->cmd_lock);
 ar->readlen = 0;
 spin_unlock_bh(&ar->cmd_lock);
 complete(&ar->cmd_wait);






}
