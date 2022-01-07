
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_usb {int dma_addr; int * iso_buffer; int buffer_size; int udev; int ** iso_urb; } ;


 int B2C2_USB_NUM_ISO_URB ;
 int deb_ts (char*,int) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void flexcop_usb_transfer_exit(struct flexcop_usb *fc_usb)
{
 int i;
 for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++)
  if (fc_usb->iso_urb[i] != ((void*)0)) {
   deb_ts("unlinking/killing urb no. %d\n",i);
   usb_kill_urb(fc_usb->iso_urb[i]);
   usb_free_urb(fc_usb->iso_urb[i]);
  }

 if (fc_usb->iso_buffer != ((void*)0))
  usb_free_coherent(fc_usb->udev,
   fc_usb->buffer_size, fc_usb->iso_buffer,
   fc_usb->dma_addr);
}
