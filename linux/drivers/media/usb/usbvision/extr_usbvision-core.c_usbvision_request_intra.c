
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int request_intra; } ;


 int DBG_IRQ ;
 int PDEBUG (int ,char*) ;
 int USBVISION_FORCE_INTRA ;
 int usbvision_write_reg_irq (struct usb_usbvision*,int ,unsigned char*,int) ;

__attribute__((used)) static int usbvision_request_intra(struct usb_usbvision *usbvision)
{
 unsigned char buffer[1];

 PDEBUG(DBG_IRQ, "");
 usbvision->request_intra = 1;
 buffer[0] = 1;
 usbvision_write_reg_irq(usbvision, USBVISION_FORCE_INTRA, buffer, 1);
 return 0;
}
