
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer; } ;


 int kfree (int ) ;
 int usb_free_urb (struct urb*) ;

void peak_usb_async_complete(struct urb *urb)
{
 kfree(urb->transfer_buffer);
 usb_free_urb(urb);
}
