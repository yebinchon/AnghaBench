
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct go7007_usb {int usbdev; } ;
struct go7007 {int dev; int * usb_buf; struct go7007_usb* hpi_context; } ;
typedef int status_reg ;
typedef int __le16 ;


 int HPI_STATUS_ADDR ;
 int INT_INDEX_ADDR ;
 int INT_PARAM_ADDR ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int) ;
 int le16_to_cpu (int ) ;
 int msleep (int) ;
 int pr_debug (char*,int,int) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int go7007_usb_ezusb_write_interrupt(struct go7007 *go,
      int addr, int data)
{
 struct go7007_usb *usb = go->hpi_context;
 int i, r;
 u16 status_reg = 0;
 int timeout = 500;

 pr_debug("WriteInterrupt: %04x %04x\n", addr, data);

 for (i = 0; i < 100; ++i) {
  r = usb_control_msg(usb->usbdev,
    usb_rcvctrlpipe(usb->usbdev, 0), 0x14,
    USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
    0, HPI_STATUS_ADDR, go->usb_buf,
    sizeof(status_reg), timeout);
  if (r < 0)
   break;
  status_reg = le16_to_cpu(*((__le16 *)go->usb_buf));
  if (!(status_reg & 0x0010))
   break;
  msleep(10);
 }
 if (r < 0)
  goto write_int_error;
 if (i == 100) {
  dev_err(go->dev, "device is hung, status reg = 0x%04x\n", status_reg);
  return -1;
 }
 r = usb_control_msg(usb->usbdev, usb_sndctrlpipe(usb->usbdev, 0), 0x12,
   USB_TYPE_VENDOR | USB_RECIP_DEVICE, data,
   INT_PARAM_ADDR, ((void*)0), 0, timeout);
 if (r < 0)
  goto write_int_error;
 r = usb_control_msg(usb->usbdev, usb_sndctrlpipe(usb->usbdev, 0),
   0x12, USB_TYPE_VENDOR | USB_RECIP_DEVICE, addr,
   INT_INDEX_ADDR, ((void*)0), 0, timeout);
 if (r < 0)
  goto write_int_error;
 return 0;

write_int_error:
 dev_err(go->dev, "error in WriteInterrupt: %d\n", r);
 return r;
}
