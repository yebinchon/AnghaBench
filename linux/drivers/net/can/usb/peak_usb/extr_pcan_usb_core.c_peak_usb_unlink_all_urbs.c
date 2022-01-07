
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct peak_usb_device {int active_tx_urbs; int tx_submitted; TYPE_1__* tx_contexts; int rx_submitted; } ;
struct TYPE_2__ {int echo_index; struct urb* urb; } ;


 int PCAN_USB_MAX_TX_URBS ;
 int atomic_set (int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void peak_usb_unlink_all_urbs(struct peak_usb_device *dev)
{
 int i;


 usb_kill_anchored_urbs(&dev->rx_submitted);


 for (i = 0; i < PCAN_USB_MAX_TX_URBS; i++) {
  struct urb *urb = dev->tx_contexts[i].urb;

  if (!urb ||
      dev->tx_contexts[i].echo_index != PCAN_USB_MAX_TX_URBS) {




   continue;
  }

  usb_free_urb(urb);
  dev->tx_contexts[i].urb = ((void*)0);
 }


 usb_kill_anchored_urbs(&dev->tx_submitted);
 atomic_set(&dev->active_tx_urbs, 0);
}
