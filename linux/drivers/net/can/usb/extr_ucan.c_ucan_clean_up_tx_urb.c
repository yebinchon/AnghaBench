
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; } ;
struct ucan_priv {int udev; } ;
struct ucan_message_out {int dummy; } ;


 int usb_free_coherent (int ,int,int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void ucan_clean_up_tx_urb(struct ucan_priv *up, struct urb *urb)
{
 usb_free_coherent(up->udev, sizeof(struct ucan_message_out),
     urb->transfer_buffer, urb->transfer_dma);
 usb_free_urb(urb);
}
