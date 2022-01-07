
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcan_usb_msg_context {int* ptr; int* end; int netdev; int rec_ts_idx; } ;


 int EINVAL ;
 int PCAN_USB_CMD_ARGS ;
 size_t PCAN_USB_CMD_FUNC ;
 size_t PCAN_USB_CMD_NUM ;
 int PCAN_USB_ERROR_TXQFULL ;





 int PCAN_USB_STATUSLEN_DLC ;
 int PCAN_USB_STATUSLEN_TIMESTAMP ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*,int) ;
 int pcan_usb_decode_error (struct pcan_usb_msg_context*,int,int) ;
 int pcan_usb_decode_ts (struct pcan_usb_msg_context*,int) ;
 int pcan_usb_update_ts (struct pcan_usb_msg_context*) ;

__attribute__((used)) static int pcan_usb_decode_status(struct pcan_usb_msg_context *mc,
      u8 status_len)
{
 u8 rec_len = status_len & PCAN_USB_STATUSLEN_DLC;
 u8 f, n;
 int err;


 if ((mc->ptr + 2) > mc->end)
  return -EINVAL;

 f = mc->ptr[PCAN_USB_CMD_FUNC];
 n = mc->ptr[PCAN_USB_CMD_NUM];
 mc->ptr += PCAN_USB_CMD_ARGS;

 if (status_len & PCAN_USB_STATUSLEN_TIMESTAMP) {
  int err = pcan_usb_decode_ts(mc, !mc->rec_ts_idx);

  if (err)
   return err;




  mc->rec_ts_idx++;
 }

 switch (f) {
 case 129:
  err = pcan_usb_decode_error(mc, n, status_len);
  if (err)
   return err;
  break;

 case 132:

  rec_len = 2;
  break;

 case 130:

  rec_len = 1;
  break;

 case 128:

  if (pcan_usb_update_ts(mc))
   return -EINVAL;
  break;

 case 131:

  if (n & PCAN_USB_ERROR_TXQFULL)
   netdev_dbg(mc->netdev, "device Tx queue full)\n");
  break;
 default:
  netdev_err(mc->netdev, "unexpected function %u\n", f);
  break;
 }

 if ((mc->ptr + rec_len) > mc->end)
  return -EINVAL;

 mc->ptr += rec_len;

 return 0;
}
