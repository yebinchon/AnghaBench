
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct peak_usb_device {int state; int netdev; int udev; } ;
struct TYPE_2__ {int rec_buffer; } ;
struct pcan_usb_pro_msg {int rec_buffer_len; TYPE_1__ u; } ;


 int PCAN_USBPRO_COMMAND_TIMEOUT ;
 int PCAN_USBPRO_EP_CMDOUT ;
 int PCAN_USB_STATE_CONNECTED ;
 int netdev_err (int ,char*,int) ;
 int usb_bulk_msg (int ,int ,int ,int ,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int pcan_usb_pro_send_cmd(struct peak_usb_device *dev,
     struct pcan_usb_pro_msg *pum)
{
 int actual_length;
 int err;


 if (!(dev->state & PCAN_USB_STATE_CONNECTED))
  return 0;

 err = usb_bulk_msg(dev->udev,
  usb_sndbulkpipe(dev->udev, PCAN_USBPRO_EP_CMDOUT),
  pum->u.rec_buffer, pum->rec_buffer_len,
  &actual_length, PCAN_USBPRO_COMMAND_TIMEOUT);
 if (err)
  netdev_err(dev->netdev, "sending command failure: %d\n", err);

 return err;
}
