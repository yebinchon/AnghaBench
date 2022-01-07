
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct peak_usb_device {int state; int netdev; void** cmd_buf; int udev; } ;


 int PCAN_USB_CMD_ARGS ;
 int PCAN_USB_CMD_ARGS_LEN ;
 size_t PCAN_USB_CMD_FUNC ;
 int PCAN_USB_CMD_LEN ;
 size_t PCAN_USB_CMD_NUM ;
 int PCAN_USB_COMMAND_TIMEOUT ;
 int PCAN_USB_EP_CMDOUT ;
 int PCAN_USB_STATE_CONNECTED ;
 int memcpy (void**,void**,int ) ;
 int netdev_err (int ,char*,void*,void*,int) ;
 int usb_bulk_msg (int ,int ,void**,int ,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int pcan_usb_send_cmd(struct peak_usb_device *dev, u8 f, u8 n, u8 *p)
{
 int err;
 int actual_length;


 if (!(dev->state & PCAN_USB_STATE_CONNECTED))
  return 0;

 dev->cmd_buf[PCAN_USB_CMD_FUNC] = f;
 dev->cmd_buf[PCAN_USB_CMD_NUM] = n;

 if (p)
  memcpy(dev->cmd_buf + PCAN_USB_CMD_ARGS,
   p, PCAN_USB_CMD_ARGS_LEN);

 err = usb_bulk_msg(dev->udev,
   usb_sndbulkpipe(dev->udev, PCAN_USB_EP_CMDOUT),
   dev->cmd_buf, PCAN_USB_CMD_LEN, &actual_length,
   PCAN_USB_COMMAND_TIMEOUT);
 if (err)
  netdev_err(dev->netdev,
   "sending cmd f=0x%x n=0x%x failure: %d\n",
   f, n, err);
 return err;
}
