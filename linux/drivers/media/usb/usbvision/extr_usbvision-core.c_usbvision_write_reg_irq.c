
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bRequestType; void* wLength; void* wIndex; scalar_t__ wValue; int bRequest; } ;
struct usb_usbvision {int ctrl_urb_busy; int ctrl_urb; scalar_t__ ctrl_urb_buffer; TYPE_1__ ctrl_urb_setup; int dev; } ;


 int DBG_IRQ ;
 int EBUSY ;
 int EFAULT ;
 int GFP_ATOMIC ;
 int PDEBUG (int ,char*,...) ;
 int USBVISION_OP_CODE ;
 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 void* cpu_to_le16 (int) ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int usb_fill_control_urb (int ,int ,int ,unsigned char*,void*,int,int ,void*) ;
 int usb_sndctrlpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;
 int usbvision_ctrl_urb_complete ;

__attribute__((used)) static int usbvision_write_reg_irq(struct usb_usbvision *usbvision, int address,
    unsigned char *data, int len)
{
 int err_code = 0;

 PDEBUG(DBG_IRQ, "");
 if (len > 8)
  return -EFAULT;
 if (usbvision->ctrl_urb_busy)
  return -EBUSY;
 usbvision->ctrl_urb_busy = 1;

 usbvision->ctrl_urb_setup.bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT;
 usbvision->ctrl_urb_setup.bRequest = USBVISION_OP_CODE;
 usbvision->ctrl_urb_setup.wValue = 0;
 usbvision->ctrl_urb_setup.wIndex = cpu_to_le16(address);
 usbvision->ctrl_urb_setup.wLength = cpu_to_le16(len);
 usb_fill_control_urb(usbvision->ctrl_urb, usbvision->dev,
       usb_sndctrlpipe(usbvision->dev, 1),
       (unsigned char *)&usbvision->ctrl_urb_setup,
       (void *)usbvision->ctrl_urb_buffer, len,
       usbvision_ctrl_urb_complete,
       (void *)usbvision);

 memcpy(usbvision->ctrl_urb_buffer, data, len);

 err_code = usb_submit_urb(usbvision->ctrl_urb, GFP_ATOMIC);
 if (err_code < 0) {

  usbvision->ctrl_urb_busy = 0;
 }
 PDEBUG(DBG_IRQ, "submit %d byte: error %d", len, err_code);
 return err_code;
}
