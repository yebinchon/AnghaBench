
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;


 int peak_usb_async_complete (struct urb*) ;
 int peak_usb_restart_complete (int ) ;

void pcan_usb_pro_restart_complete(struct urb *urb)
{

 peak_usb_async_complete(urb);


 peak_usb_restart_complete(urb->context);
}
