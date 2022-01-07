
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int error_warning; int error_passive; int bus_off; } ;
struct TYPE_5__ {int state; TYPE_1__ can_stats; } ;
struct peak_usb_device {TYPE_2__ can; struct net_device* netdev; } ;
struct pcan_usb_pro_rxstatus {int channel; int ts32; int err_frm; int status; } ;
struct pcan_usb_pro_interface {int time_ref; struct peak_usb_device** dev; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; int rx_errors; int rx_over_errors; } ;
struct net_device {TYPE_3__ stats; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int can_id; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_OVERLOAD ;




 int CAN_STATE_MAX ;
 int ENOMEM ;
 int const PCAN_USBPRO_STATUS_BUS ;
 int const PCAN_USBPRO_STATUS_ERROR ;
 int const PCAN_USBPRO_STATUS_OVERRUN ;
 int const PCAN_USBPRO_STATUS_QOVERRUN ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int netif_rx (struct sk_buff*) ;
 int peak_usb_get_ts_time (int *,int,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static int pcan_usb_pro_handle_error(struct pcan_usb_pro_interface *usb_if,
         struct pcan_usb_pro_rxstatus *er)
{
 const u16 raw_status = le16_to_cpu(er->status);
 const unsigned int ctrl_idx = (er->channel >> 4) & 0x0f;
 struct peak_usb_device *dev = usb_if->dev[ctrl_idx];
 struct net_device *netdev = dev->netdev;
 struct can_frame *can_frame;
 enum can_state new_state = 130;
 u8 err_mask = 0;
 struct sk_buff *skb;
 struct skb_shared_hwtstamps *hwts;


 if (dev->can.state == 131)
  return 0;

 if (!raw_status) {

  dev->can.state = 130;
  return 0;
 }

 if (raw_status & (PCAN_USBPRO_STATUS_OVERRUN |
     PCAN_USBPRO_STATUS_QOVERRUN)) {

  new_state = CAN_STATE_MAX;
 }

 if (raw_status & PCAN_USBPRO_STATUS_BUS) {
  new_state = 131;
 } else if (raw_status & PCAN_USBPRO_STATUS_ERROR) {
  u32 rx_err_cnt = (le32_to_cpu(er->err_frm) & 0x00ff0000) >> 16;
  u32 tx_err_cnt = (le32_to_cpu(er->err_frm) & 0xff000000) >> 24;

  if (rx_err_cnt > 127)
   err_mask |= CAN_ERR_CRTL_RX_PASSIVE;
  else if (rx_err_cnt > 96)
   err_mask |= CAN_ERR_CRTL_RX_WARNING;

  if (tx_err_cnt > 127)
   err_mask |= CAN_ERR_CRTL_TX_PASSIVE;
  else if (tx_err_cnt > 96)
   err_mask |= CAN_ERR_CRTL_TX_WARNING;

  if (err_mask & (CAN_ERR_CRTL_RX_WARNING |
    CAN_ERR_CRTL_TX_WARNING))
   new_state = 128;
  else if (err_mask & (CAN_ERR_CRTL_RX_PASSIVE |
         CAN_ERR_CRTL_TX_PASSIVE))
   new_state = 129;
 }


 if (dev->can.state == new_state)
  return 0;


 skb = alloc_can_err_skb(netdev, &can_frame);
 if (!skb)
  return -ENOMEM;

 switch (new_state) {
 case 131:
  can_frame->can_id |= CAN_ERR_BUSOFF;
  dev->can.can_stats.bus_off++;
  can_bus_off(netdev);
  break;

 case 129:
  can_frame->can_id |= CAN_ERR_CRTL;
  can_frame->data[1] |= err_mask;
  dev->can.can_stats.error_passive++;
  break;

 case 128:
  can_frame->can_id |= CAN_ERR_CRTL;
  can_frame->data[1] |= err_mask;
  dev->can.can_stats.error_warning++;
  break;

 case 130:
  break;

 default:

  if (raw_status & PCAN_USBPRO_STATUS_OVERRUN) {
   can_frame->can_id |= CAN_ERR_PROT;
   can_frame->data[2] |= CAN_ERR_PROT_OVERLOAD;
   netdev->stats.rx_over_errors++;
   netdev->stats.rx_errors++;
  }

  if (raw_status & PCAN_USBPRO_STATUS_QOVERRUN) {
   can_frame->can_id |= CAN_ERR_CRTL;
   can_frame->data[1] |= CAN_ERR_CRTL_RX_OVERFLOW;
   netdev->stats.rx_over_errors++;
   netdev->stats.rx_errors++;
  }

  new_state = 130;
  break;
 }

 dev->can.state = new_state;

 hwts = skb_hwtstamps(skb);
 peak_usb_get_ts_time(&usb_if->time_ref, le32_to_cpu(er->ts32), &hwts->hwtstamp);
 netdev->stats.rx_packets++;
 netdev->stats.rx_bytes += can_frame->can_dlc;
 netif_rx(skb);

 return 0;
}
