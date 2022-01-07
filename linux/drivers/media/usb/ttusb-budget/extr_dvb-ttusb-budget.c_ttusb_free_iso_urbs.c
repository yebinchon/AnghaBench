
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {int iso_buffer; int * iso_urb; } ;


 int ISO_BUF_COUNT ;
 int kfree (int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ttusb_free_iso_urbs(struct ttusb *ttusb)
{
 int i;

 for (i = 0; i < ISO_BUF_COUNT; i++)
  usb_free_urb(ttusb->iso_urb[i]);
 kfree(ttusb->iso_buffer);
}
