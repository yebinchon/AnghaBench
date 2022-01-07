
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct TYPE_2__ {int rx_size; } ;
struct ar9170 {TYPE_1__ fw; int udev; } ;
typedef int gfp_t ;


 int AR9170_USB_EP_RX ;
 int URB_FREE_BUFFER ;
 int carl9170_usb_rx_complete ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,void*,int ,int ,struct ar9170*) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static struct urb *carl9170_usb_alloc_rx_urb(struct ar9170 *ar, gfp_t gfp)
{
 struct urb *urb;
 void *buf;

 buf = kmalloc(ar->fw.rx_size, gfp);
 if (!buf)
  return ((void*)0);

 urb = usb_alloc_urb(0, gfp);
 if (!urb) {
  kfree(buf);
  return ((void*)0);
 }

 usb_fill_bulk_urb(urb, ar->udev, usb_rcvbulkpipe(ar->udev,
     AR9170_USB_EP_RX), buf, ar->fw.rx_size,
     carl9170_usb_rx_complete, ar);

 urb->transfer_flags |= URB_FREE_BUFFER;

 return urb;
}
