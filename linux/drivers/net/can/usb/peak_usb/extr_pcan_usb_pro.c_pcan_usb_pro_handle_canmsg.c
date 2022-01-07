
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct pcan_usb_pro_rxmsg {int len; int flags; int ts32; int data; int id; } ;
struct pcan_usb_pro_interface {int time_ref; struct peak_usb_device** dev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct can_frame {int can_dlc; int data; int can_id; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int ENOMEM ;
 int PCAN_USBPRO_EXT ;
 int PCAN_USBPRO_RTR ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int peak_usb_get_ts_time (int *,int ,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static int pcan_usb_pro_handle_canmsg(struct pcan_usb_pro_interface *usb_if,
          struct pcan_usb_pro_rxmsg *rx)
{
 const unsigned int ctrl_idx = (rx->len >> 4) & 0x0f;
 struct peak_usb_device *dev = usb_if->dev[ctrl_idx];
 struct net_device *netdev = dev->netdev;
 struct can_frame *can_frame;
 struct sk_buff *skb;
 struct skb_shared_hwtstamps *hwts;

 skb = alloc_can_skb(netdev, &can_frame);
 if (!skb)
  return -ENOMEM;

 can_frame->can_id = le32_to_cpu(rx->id);
 can_frame->can_dlc = rx->len & 0x0f;

 if (rx->flags & PCAN_USBPRO_EXT)
  can_frame->can_id |= CAN_EFF_FLAG;

 if (rx->flags & PCAN_USBPRO_RTR)
  can_frame->can_id |= CAN_RTR_FLAG;
 else
  memcpy(can_frame->data, rx->data, can_frame->can_dlc);

 hwts = skb_hwtstamps(skb);
 peak_usb_get_ts_time(&usb_if->time_ref, le32_to_cpu(rx->ts32),
        &hwts->hwtstamp);

 netdev->stats.rx_packets++;
 netdev->stats.rx_bytes += can_frame->can_dlc;
 netif_rx(skb);

 return 0;
}
