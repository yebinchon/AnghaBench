
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union pcan_usb_pro_rec {size_t data_type; int rx_ts; int rx_status; int rx_msg; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct urb {int actual_length; int * transfer_buffer; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct TYPE_2__ {int * rec_cnt_rd; } ;
struct pcan_usb_pro_msg {TYPE_1__ u; } ;
struct pcan_usb_pro_interface {int dummy; } ;
struct net_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;
 int ENOTSUPP ;






 scalar_t__ le16_to_cpu (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int pcan_dump_mem (char*,int *,int) ;
 int * pcan_msg_init (struct pcan_usb_pro_msg*,int *,int) ;
 struct pcan_usb_pro_interface* pcan_usb_pro_dev_if (struct peak_usb_device*) ;
 int pcan_usb_pro_handle_canmsg (struct pcan_usb_pro_interface*,int *) ;
 int pcan_usb_pro_handle_error (struct pcan_usb_pro_interface*,int *) ;
 int pcan_usb_pro_handle_ts (struct pcan_usb_pro_interface*,int *) ;
 scalar_t__* pcan_usb_pro_sizeof_rec ;

__attribute__((used)) static int pcan_usb_pro_decode_buf(struct peak_usb_device *dev, struct urb *urb)
{
 struct pcan_usb_pro_interface *usb_if = pcan_usb_pro_dev_if(dev);
 struct net_device *netdev = dev->netdev;
 struct pcan_usb_pro_msg usb_msg;
 u8 *rec_ptr, *msg_end;
 u16 rec_cnt;
 int err = 0;

 rec_ptr = pcan_msg_init(&usb_msg, urb->transfer_buffer,
     urb->actual_length);
 if (!rec_ptr) {
  netdev_err(netdev, "bad msg hdr len %d\n", urb->actual_length);
  return -EINVAL;
 }


 msg_end = urb->transfer_buffer + urb->actual_length;
 rec_cnt = le16_to_cpu(*usb_msg.u.rec_cnt_rd);
 for (; rec_cnt > 0; rec_cnt--) {
  union pcan_usb_pro_rec *pr = (union pcan_usb_pro_rec *)rec_ptr;
  u16 sizeof_rec = pcan_usb_pro_sizeof_rec[pr->data_type];

  if (!sizeof_rec) {
   netdev_err(netdev,
       "got unsupported rec in usb msg:\n");
   err = -ENOTSUPP;
   break;
  }


  if (rec_ptr + sizeof_rec > msg_end) {
   netdev_err(netdev,
    "got frag rec: should inc usb rx buf size\n");
   err = -EBADMSG;
   break;
  }

  switch (pr->data_type) {
  case 131:
  case 132:
  case 133:
  case 130:
   err = pcan_usb_pro_handle_canmsg(usb_if, &pr->rx_msg);
   if (err < 0)
    goto fail;
   break;

  case 129:
   err = pcan_usb_pro_handle_error(usb_if, &pr->rx_status);
   if (err < 0)
    goto fail;
   break;

  case 128:
   pcan_usb_pro_handle_ts(usb_if, &pr->rx_ts);
   break;

  default:
   netdev_err(netdev,
       "unhandled rec type 0x%02x (%d): ignored\n",
       pr->data_type, pr->data_type);
   break;
  }

  rec_ptr += sizeof_rec;
 }

fail:
 if (err)
  pcan_dump_mem("received msg",
         urb->transfer_buffer, urb->actual_length);

 return err;
}
