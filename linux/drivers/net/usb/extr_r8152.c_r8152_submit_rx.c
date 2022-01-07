
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
struct urb {scalar_t__ actual_length; } ;
struct rx_agg {int list; struct urb* urb; int buffer; } ;
struct r8152 {int napi; int netdev; int rx_lock; int rx_done; int rx_buf_sz; int udev; int flags; } ;
typedef int gfp_t ;


 int ENODEV ;
 int RTL8152_UNPLUG ;
 int WORK_ENABLE ;
 int list_add_tail (int *,int *) ;
 int napi_schedule (int *) ;
 int netif_carrier_ok (int ) ;
 int netif_device_detach (int ) ;
 int netif_err (struct r8152*,int ,int ,char*,struct rx_agg*,int) ;
 scalar_t__ read_bulk_callback ;
 int rtl_set_unplug (struct r8152*) ;
 int rx_err ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct rx_agg*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static
int r8152_submit_rx(struct r8152 *tp, struct rx_agg *agg, gfp_t mem_flags)
{
 int ret;


 if (test_bit(RTL8152_UNPLUG, &tp->flags) ||
     !test_bit(WORK_ENABLE, &tp->flags) || !netif_carrier_ok(tp->netdev))
  return 0;

 usb_fill_bulk_urb(agg->urb, tp->udev, usb_rcvbulkpipe(tp->udev, 1),
     agg->buffer, tp->rx_buf_sz,
     (usb_complete_t)read_bulk_callback, agg);

 ret = usb_submit_urb(agg->urb, mem_flags);
 if (ret == -ENODEV) {
  rtl_set_unplug(tp);
  netif_device_detach(tp->netdev);
 } else if (ret) {
  struct urb *urb = agg->urb;
  unsigned long flags;

  urb->actual_length = 0;
  spin_lock_irqsave(&tp->rx_lock, flags);
  list_add_tail(&agg->list, &tp->rx_done);
  spin_unlock_irqrestore(&tp->rx_lock, flags);

  netif_err(tp, rx_err, tp->netdev,
     "Couldn't submit rx[%p], ret = %d\n", agg, ret);

  napi_schedule(&tp->napi);
 }

 return ret;
}
