
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ ctrl_urb_busy; } ;
struct urb {scalar_t__ context; } ;


 int DBG_IRQ ;
 int PDEBUG (int ,char*) ;

__attribute__((used)) static void usbvision_ctrl_urb_complete(struct urb *urb)
{
 struct usb_usbvision *usbvision = (struct usb_usbvision *)urb->context;

 PDEBUG(DBG_IRQ, "");
 usbvision->ctrl_urb_busy = 0;
}
