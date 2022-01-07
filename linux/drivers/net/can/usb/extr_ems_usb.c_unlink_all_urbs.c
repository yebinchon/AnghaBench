
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ems_usb {TYPE_1__* tx_contexts; int active_tx_urbs; int tx_submitted; int rx_submitted; int intr_urb; } ;
struct TYPE_2__ {int echo_index; } ;


 int MAX_TX_URBS ;
 int atomic_set (int *,int ) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void unlink_all_urbs(struct ems_usb *dev)
{
 int i;

 usb_unlink_urb(dev->intr_urb);

 usb_kill_anchored_urbs(&dev->rx_submitted);

 usb_kill_anchored_urbs(&dev->tx_submitted);
 atomic_set(&dev->active_tx_urbs, 0);

 for (i = 0; i < MAX_TX_URBS; i++)
  dev->tx_contexts[i].echo_index = MAX_TX_URBS;
}
