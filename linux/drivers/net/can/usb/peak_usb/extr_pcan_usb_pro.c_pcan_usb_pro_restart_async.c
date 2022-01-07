
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int dummy; } ;
struct peak_usb_device {int udev; int ctrl_idx; } ;
struct pcan_usb_pro_msg {int dummy; } ;


 int GFP_ATOMIC ;
 int PCAN_USBPRO_EP_CMDOUT ;
 int PCAN_USBPRO_SETBUSACT ;
 int PCAN_USB_MAX_CMD_LEN ;
 int pcan_msg_add_rec (struct pcan_usb_pro_msg*,int ,int ,int) ;
 int pcan_msg_init_empty (struct pcan_usb_pro_msg*,int *,int ) ;
 int pcan_usb_pro_restart_complete ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct peak_usb_device*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int pcan_usb_pro_restart_async(struct peak_usb_device *dev,
          struct urb *urb, u8 *buf)
{
 struct pcan_usb_pro_msg um;

 pcan_msg_init_empty(&um, buf, PCAN_USB_MAX_CMD_LEN);
 pcan_msg_add_rec(&um, PCAN_USBPRO_SETBUSACT, dev->ctrl_idx, 1);

 usb_fill_bulk_urb(urb, dev->udev,
   usb_sndbulkpipe(dev->udev, PCAN_USBPRO_EP_CMDOUT),
   buf, PCAN_USB_MAX_CMD_LEN,
   pcan_usb_pro_restart_complete, dev);

 return usb_submit_urb(urb, GFP_ATOMIC);
}
