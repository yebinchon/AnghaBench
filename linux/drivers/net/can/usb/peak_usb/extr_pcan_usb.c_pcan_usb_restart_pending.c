
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct pcan_usb* context; } ;
struct pcan_usb {int restart_timer; } ;


 int PCAN_USB_STARTUP_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int peak_usb_async_complete (struct urb*) ;

__attribute__((used)) static void pcan_usb_restart_pending(struct urb *urb)
{
 struct pcan_usb *pdev = urb->context;


 mod_timer(&pdev->restart_timer,
   jiffies + msecs_to_jiffies(PCAN_USB_STARTUP_TIMEOUT));


 peak_usb_async_complete(urb);
}
