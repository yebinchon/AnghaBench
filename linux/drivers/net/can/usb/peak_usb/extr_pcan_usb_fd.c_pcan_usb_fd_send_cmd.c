
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct peak_usb_device {int state; int netdev; TYPE_1__* udev; } ;
typedef int ptrdiff_t ;
struct TYPE_3__ {scalar_t__ speed; } ;


 int PCAN_UFD_CMD_BUFFER_SIZE ;
 int PCAN_UFD_CMD_TIMEOUT_MS ;
 int PCAN_UFD_LOSPD_PKT_SIZE ;
 int PCAN_USBPRO_EP_CMDOUT ;
 int PCAN_USB_STATE_CONNECTED ;
 scalar_t__ USB_SPEED_HIGH ;
 int memset (void*,int,int) ;
 int min (int,int) ;
 int netdev_err (int ,char*,int) ;
 void* pcan_usb_fd_cmd_buffer (struct peak_usb_device*) ;
 scalar_t__ unlikely (int) ;
 int usb_bulk_msg (TYPE_1__*,int ,int *,int,int *,int ) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int pcan_usb_fd_send_cmd(struct peak_usb_device *dev, void *cmd_tail)
{
 void *cmd_head = pcan_usb_fd_cmd_buffer(dev);
 int err = 0;
 u8 *packet_ptr;
 int packet_len;
 ptrdiff_t cmd_len;


 if (!(dev->state & PCAN_USB_STATE_CONNECTED))
  return 0;




 cmd_len = cmd_tail - cmd_head;
 if (cmd_len <= (PCAN_UFD_CMD_BUFFER_SIZE - sizeof(u64))) {
  memset(cmd_tail, 0xff, sizeof(u64));
  cmd_len += sizeof(u64);
 }

 packet_ptr = cmd_head;
 packet_len = cmd_len;


 if (unlikely(dev->udev->speed != USB_SPEED_HIGH))
  packet_len = min(packet_len, PCAN_UFD_LOSPD_PKT_SIZE);

 do {
  err = usb_bulk_msg(dev->udev,
       usb_sndbulkpipe(dev->udev,
         PCAN_USBPRO_EP_CMDOUT),
       packet_ptr, packet_len,
       ((void*)0), PCAN_UFD_CMD_TIMEOUT_MS);
  if (err) {
   netdev_err(dev->netdev,
       "sending command failure: %d\n", err);
   break;
  }

  packet_ptr += packet_len;
  cmd_len -= packet_len;

  if (cmd_len < PCAN_UFD_LOSPD_PKT_SIZE)
   packet_len = cmd_len;

 } while (packet_len > 0);

 return err;
}
