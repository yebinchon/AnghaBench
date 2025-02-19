
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pcan_usb_msg_context {TYPE_7__* netdev; int ts16; TYPE_4__* pdev; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int can_id; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;
struct TYPE_13__ {int rx_bytes; int rx_packets; int rx_errors; int rx_over_errors; } ;
struct TYPE_15__ {TYPE_5__ stats; } ;
struct TYPE_14__ {int tick_count; } ;
struct TYPE_9__ {int error_warning; int error_passive; int bus_off; } ;
struct TYPE_10__ {int state; TYPE_1__ can_stats; } ;
struct TYPE_11__ {TYPE_2__ can; } ;
struct TYPE_12__ {TYPE_6__ time_ref; TYPE_3__ dev; } ;


 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_ACTIVE ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;




 int CAN_STATE_MAX ;
 int ENOMEM ;
 scalar_t__ PCAN_USB_ERROR_BUS_HEAVY ;
 scalar_t__ PCAN_USB_ERROR_BUS_LIGHT ;
 scalar_t__ PCAN_USB_ERROR_BUS_OFF ;
 scalar_t__ PCAN_USB_ERROR_QOVR ;
 scalar_t__ PCAN_USB_ERROR_RXQOVR ;
 scalar_t__ PCAN_USB_STATUSLEN_TIMESTAMP ;
 struct sk_buff* alloc_can_err_skb (TYPE_7__*,struct can_frame**) ;
 int can_bus_off (TYPE_7__*) ;
 int netif_rx (struct sk_buff*) ;
 int peak_usb_get_ts_time (TYPE_6__*,int ,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static int pcan_usb_decode_error(struct pcan_usb_msg_context *mc, u8 n,
     u8 status_len)
{
 struct sk_buff *skb;
 struct can_frame *cf;
 enum can_state new_state;


 if (n == PCAN_USB_ERROR_QOVR)
  if (!mc->pdev->time_ref.tick_count)
   return 0;

 new_state = mc->pdev->dev.can.state;

 switch (mc->pdev->dev.can.state) {
 case 130:
  if (n & PCAN_USB_ERROR_BUS_LIGHT) {
   new_state = 128;
   break;
  }


 case 128:
  if (n & PCAN_USB_ERROR_BUS_HEAVY) {
   new_state = 129;
   break;
  }
  if (n & PCAN_USB_ERROR_BUS_OFF) {
   new_state = 131;
   break;
  }
  if (n & (PCAN_USB_ERROR_RXQOVR | PCAN_USB_ERROR_QOVR)) {




   new_state = CAN_STATE_MAX;
   break;
  }
  if ((n & PCAN_USB_ERROR_BUS_LIGHT) == 0) {

   new_state = 130;
   break;
  }
  break;

 case 129:
  if (n & PCAN_USB_ERROR_BUS_OFF) {
   new_state = 131;
   break;
  }
  if (n & PCAN_USB_ERROR_BUS_LIGHT) {
   new_state = 128;
   break;
  }
  if (n & (PCAN_USB_ERROR_RXQOVR | PCAN_USB_ERROR_QOVR)) {




   new_state = CAN_STATE_MAX;
   break;
  }

  if ((n & PCAN_USB_ERROR_BUS_HEAVY) == 0) {

   new_state = 128;
   break;
  }
  break;

 default:

  return 0;
 }


 if (mc->pdev->dev.can.state == new_state)
  return 0;


 skb = alloc_can_err_skb(mc->netdev, &cf);
 if (!skb)
  return -ENOMEM;

 switch (new_state) {
 case 131:
  cf->can_id |= CAN_ERR_BUSOFF;
  mc->pdev->dev.can.can_stats.bus_off++;
  can_bus_off(mc->netdev);
  break;

 case 129:
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] |= CAN_ERR_CRTL_TX_PASSIVE |
          CAN_ERR_CRTL_RX_PASSIVE;
  mc->pdev->dev.can.can_stats.error_passive++;
  break;

 case 128:
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] |= CAN_ERR_CRTL_TX_WARNING |
          CAN_ERR_CRTL_RX_WARNING;
  mc->pdev->dev.can.can_stats.error_warning++;
  break;

 case 130:
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = CAN_ERR_CRTL_ACTIVE;
  break;

 default:

  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] |= CAN_ERR_CRTL_RX_OVERFLOW;
  mc->netdev->stats.rx_over_errors++;
  mc->netdev->stats.rx_errors++;

  new_state = mc->pdev->dev.can.state;
  break;
 }

 mc->pdev->dev.can.state = new_state;

 if (status_len & PCAN_USB_STATUSLEN_TIMESTAMP) {
  struct skb_shared_hwtstamps *hwts = skb_hwtstamps(skb);

  peak_usb_get_ts_time(&mc->pdev->time_ref, mc->ts16,
         &hwts->hwtstamp);
 }

 mc->netdev->stats.rx_packets++;
 mc->netdev->stats.rx_bytes += cf->can_dlc;
 netif_rx(skb);

 return 0;
}
