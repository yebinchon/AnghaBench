
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct catc {int tx_ptr; size_t tx_idx; int netdev; TYPE_1__* usbdev; TYPE_2__* tx_urb; int * tx_buf; scalar_t__ is_f5u011; } ;
struct TYPE_4__ {int transfer_buffer_length; TYPE_1__* dev; int transfer_buffer; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int dev_err (int *,char*,int) ;
 int netif_trans_update (int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int catc_tx_run(struct catc *catc)
{
 int status;

 if (catc->is_f5u011)
  catc->tx_ptr = (catc->tx_ptr + 63) & ~63;

 catc->tx_urb->transfer_buffer_length = catc->tx_ptr;
 catc->tx_urb->transfer_buffer = catc->tx_buf[catc->tx_idx];
 catc->tx_urb->dev = catc->usbdev;

 if ((status = usb_submit_urb(catc->tx_urb, GFP_ATOMIC)) < 0)
  dev_err(&catc->usbdev->dev, "submit(tx_urb), status %d\n",
   status);

 catc->tx_idx = !catc->tx_idx;
 catc->tx_ptr = 0;

 netif_trans_update(catc->netdev);
 return status;
}
