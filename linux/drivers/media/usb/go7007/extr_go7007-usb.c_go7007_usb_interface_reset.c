
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct go7007_usb {TYPE_1__* board; } ;
struct go7007 {scalar_t__ status; int dev; struct go7007_usb* hpi_context; } ;
struct TYPE_2__ {int flags; } ;


 int GO7007_USB_EZUSB ;
 scalar_t__ STATUS_SHUTDOWN ;
 int dev_err (int ,char*) ;
 scalar_t__ go7007_read_interrupt (struct go7007*,int*,int*) ;
 scalar_t__ go7007_usb_vendor_request (struct go7007*,int,int ,int ,int *,int ,int ) ;
 scalar_t__ go7007_write_interrupt (struct go7007*,int,int) ;
 int msleep (int) ;
 int pr_debug (char*) ;

__attribute__((used)) static int go7007_usb_interface_reset(struct go7007 *go)
{
 struct go7007_usb *usb = go->hpi_context;
 u16 intr_val, intr_data;

 if (go->status == STATUS_SHUTDOWN)
  return -1;

 if (go7007_write_interrupt(go, 0x0001, 0x0001) < 0)
  return -1;
 msleep(100);

 if (usb->board->flags & GO7007_USB_EZUSB) {

  pr_debug("resetting EZ-USB buffers\n");
  if (go7007_usb_vendor_request(go, 0x10, 0, 0, ((void*)0), 0, 0) < 0 ||
      go7007_usb_vendor_request(go, 0x10, 0, 0, ((void*)0), 0, 0) < 0)
   return -1;


  if (go7007_write_interrupt(go, 0x0001, 0x0001) < 0)
   return -1;
  msleep(100);
 }


 if (go7007_read_interrupt(go, &intr_val, &intr_data) < 0 ||
   (intr_val & ~0x1) != 0x55aa) {
  dev_err(go->dev, "unable to reset the USB interface\n");
  return -1;
 }
 return 0;
}
