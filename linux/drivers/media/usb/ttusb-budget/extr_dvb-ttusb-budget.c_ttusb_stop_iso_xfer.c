
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {scalar_t__ iso_streaming; int * iso_urb; } ;


 int ISO_BUF_COUNT ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void ttusb_stop_iso_xfer(struct ttusb *ttusb)
{
 int i;

 for (i = 0; i < ISO_BUF_COUNT; i++)
  usb_kill_urb(ttusb->iso_urb[i]);

 ttusb->iso_streaming = 0;
}
