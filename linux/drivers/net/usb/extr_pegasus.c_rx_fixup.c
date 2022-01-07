
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int rx_tl; int net; int rx_urb; TYPE_4__* rx_skb; int usb; } ;
typedef TYPE_1__ pegasus_t ;
struct TYPE_6__ {int data; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int PEGASUS_MTU ;
 int PEGASUS_RX_URB_FAIL ;
 int PEGASUS_UNPLUG ;
 TYPE_4__* __netdev_alloc_skb_ip_align (int ,int ,int ) ;
 int netif_device_detach (int ) ;
 int netif_warn (TYPE_1__*,int ,int ,char*) ;
 int read_bulk_callback ;
 int rx_err ;
 int tasklet_schedule (int *) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void rx_fixup(unsigned long data)
{
 pegasus_t *pegasus;
 int status;

 pegasus = (pegasus_t *) data;
 if (pegasus->flags & PEGASUS_UNPLUG)
  return;

 if (pegasus->flags & PEGASUS_RX_URB_FAIL)
  if (pegasus->rx_skb)
   goto try_again;
 if (pegasus->rx_skb == ((void*)0))
  pegasus->rx_skb = __netdev_alloc_skb_ip_align(pegasus->net,
             PEGASUS_MTU,
             GFP_ATOMIC);
 if (pegasus->rx_skb == ((void*)0)) {
  netif_warn(pegasus, rx_err, pegasus->net, "low on memory\n");
  tasklet_schedule(&pegasus->rx_tl);
  return;
 }
 usb_fill_bulk_urb(pegasus->rx_urb, pegasus->usb,
     usb_rcvbulkpipe(pegasus->usb, 1),
     pegasus->rx_skb->data, PEGASUS_MTU,
     read_bulk_callback, pegasus);
try_again:
 status = usb_submit_urb(pegasus->rx_urb, GFP_ATOMIC);
 if (status == -ENODEV)
  netif_device_detach(pegasus->net);
 else if (status) {
  pegasus->flags |= PEGASUS_RX_URB_FAIL;
  tasklet_schedule(&pegasus->rx_tl);
 } else {
  pegasus->flags &= ~PEGASUS_RX_URB_FAIL;
 }
}
