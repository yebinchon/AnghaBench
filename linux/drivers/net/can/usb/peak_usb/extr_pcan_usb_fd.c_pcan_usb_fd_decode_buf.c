
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct urb {int actual_length; int * transfer_buffer; } ;
struct pucan_msg {int type; int size; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct pcan_usb_fd_if {int dummy; } ;
struct net_device {int dummy; } ;


 int EBADMSG ;





 int le16_to_cpu (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int pcan_dump_mem (char*,int *,int) ;
 int pcan_usb_fd_decode_canmsg (struct pcan_usb_fd_if*,struct pucan_msg*) ;
 int pcan_usb_fd_decode_error (struct pcan_usb_fd_if*,struct pucan_msg*) ;
 int pcan_usb_fd_decode_overrun (struct pcan_usb_fd_if*,struct pucan_msg*) ;
 int pcan_usb_fd_decode_status (struct pcan_usb_fd_if*,struct pucan_msg*) ;
 int pcan_usb_fd_decode_ts (struct pcan_usb_fd_if*,struct pucan_msg*) ;
 struct pcan_usb_fd_if* pcan_usb_fd_dev_if (struct peak_usb_device*) ;

__attribute__((used)) static int pcan_usb_fd_decode_buf(struct peak_usb_device *dev, struct urb *urb)
{
 struct pcan_usb_fd_if *usb_if = pcan_usb_fd_dev_if(dev);
 struct net_device *netdev = dev->netdev;
 struct pucan_msg *rx_msg;
 u8 *msg_ptr, *msg_end;
 int err = 0;


 msg_ptr = urb->transfer_buffer;
 msg_end = urb->transfer_buffer + urb->actual_length;
 for (; msg_ptr < msg_end;) {
  u16 rx_msg_type, rx_msg_size;

  rx_msg = (struct pucan_msg *)msg_ptr;
  if (!rx_msg->size) {

   break;
  }

  rx_msg_size = le16_to_cpu(rx_msg->size);
  rx_msg_type = le16_to_cpu(rx_msg->type);


  if (msg_ptr + rx_msg_size > msg_end) {
   netdev_err(netdev,
       "got frag rec: should inc usb rx buf sze\n");
   err = -EBADMSG;
   break;
  }

  switch (rx_msg_type) {
  case 130:
   err = pcan_usb_fd_decode_canmsg(usb_if, rx_msg);
   if (err < 0)
    goto fail;
   break;

  case 132:
   pcan_usb_fd_decode_ts(usb_if, rx_msg);
   break;

  case 129:
   err = pcan_usb_fd_decode_error(usb_if, rx_msg);
   if (err < 0)
    goto fail;
   break;

  case 128:
   err = pcan_usb_fd_decode_status(usb_if, rx_msg);
   if (err < 0)
    goto fail;
   break;

  case 131:
   err = pcan_usb_fd_decode_overrun(usb_if, rx_msg);
   if (err < 0)
    goto fail;
   break;

  default:
   netdev_err(netdev,
       "unhandled msg type 0x%02x (%d): ignored\n",
       rx_msg_type, rx_msg_type);
   break;
  }

  msg_ptr += rx_msg_size;
 }

fail:
 if (err)
  pcan_dump_mem("received msg",
         urb->transfer_buffer, urb->actual_length);
 return err;
}
