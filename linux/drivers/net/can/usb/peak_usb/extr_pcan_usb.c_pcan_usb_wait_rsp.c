
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct peak_usb_device {int state; scalar_t__ cmd_buf; int netdev; int udev; } ;


 scalar_t__ PCAN_USB_CMD_ARGS ;
 int PCAN_USB_CMD_ARGS_LEN ;
 int PCAN_USB_CMD_LEN ;
 int PCAN_USB_COMMAND_TIMEOUT ;
 int PCAN_USB_EP_CMDIN ;
 int PCAN_USB_STATE_CONNECTED ;
 int memcpy (int *,scalar_t__,int ) ;
 int netdev_err (int ,char*,int ,int ,int) ;
 int pcan_usb_send_cmd (struct peak_usb_device*,int ,int ,int *) ;
 int usb_bulk_msg (int ,int ,scalar_t__,int ,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int pcan_usb_wait_rsp(struct peak_usb_device *dev, u8 f, u8 n, u8 *p)
{
 int err;
 int actual_length;


 if (!(dev->state & PCAN_USB_STATE_CONNECTED))
  return 0;


 err = pcan_usb_send_cmd(dev, f, n, ((void*)0));
 if (err)
  return err;

 err = usb_bulk_msg(dev->udev,
  usb_rcvbulkpipe(dev->udev, PCAN_USB_EP_CMDIN),
  dev->cmd_buf, PCAN_USB_CMD_LEN, &actual_length,
  PCAN_USB_COMMAND_TIMEOUT);
 if (err)
  netdev_err(dev->netdev,
   "waiting rsp f=0x%x n=0x%x failure: %d\n", f, n, err);
 else if (p)
  memcpy(p, dev->cmd_buf + PCAN_USB_CMD_ARGS,
   PCAN_USB_CMD_ARGS_LEN);

 return err;
}
