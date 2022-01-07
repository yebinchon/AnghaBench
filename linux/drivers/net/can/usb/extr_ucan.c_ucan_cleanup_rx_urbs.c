
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; } ;
struct ucan_priv {int in_ep_size; int udev; } ;


 int UCAN_MAX_RX_URBS ;
 int memset (struct urb**,int ,int) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void ucan_cleanup_rx_urbs(struct ucan_priv *up, struct urb **urbs)
{
 int i;

 for (i = 0; i < UCAN_MAX_RX_URBS; i++) {
  if (urbs[i]) {
   usb_unanchor_urb(urbs[i]);
   usb_free_coherent(up->udev,
       up->in_ep_size,
       urbs[i]->transfer_buffer,
       urbs[i]->transfer_dma);
   usb_free_urb(urbs[i]);
  }
 }

 memset(urbs, 0, sizeof(*urbs) * UCAN_MAX_RX_URBS);
}
