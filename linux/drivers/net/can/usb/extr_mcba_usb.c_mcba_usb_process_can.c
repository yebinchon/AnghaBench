
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct mcba_usb_msg_can {int dlc; int data; int eid; int sid; } ;
struct mcba_priv {TYPE_1__* netdev; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int data; } ;
struct TYPE_3__ {struct net_device_stats stats; } ;


 int CAN_EFF_FLAG ;
 int CAN_LED_EVENT_RX ;
 int CAN_RTR_FLAG ;
 int MCBA_DLC_MASK ;
 int MCBA_DLC_RTR_MASK ;
 int MCBA_SIDL_EXID_MASK ;
 struct sk_buff* alloc_can_skb (TYPE_1__*,struct can_frame**) ;
 int can_led_event (TYPE_1__*,int ) ;
 scalar_t__ get_can_dlc (int) ;
 int get_unaligned_be16 (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void mcba_usb_process_can(struct mcba_priv *priv,
     struct mcba_usb_msg_can *msg)
{
 struct can_frame *cf;
 struct sk_buff *skb;
 struct net_device_stats *stats = &priv->netdev->stats;
 u16 sid;

 skb = alloc_can_skb(priv->netdev, &cf);
 if (!skb)
  return;

 sid = get_unaligned_be16(&msg->sid);

 if (sid & MCBA_SIDL_EXID_MASK) {



  cf->can_id = CAN_EFF_FLAG;


  cf->can_id |= (sid & 0xffe0) << 13;

  cf->can_id |= (sid & 3) << 16;

  cf->can_id |= get_unaligned_be16(&msg->eid);
 } else {



  cf->can_id = (sid & 0xffe0) >> 5;
 }

 if (msg->dlc & MCBA_DLC_RTR_MASK)
  cf->can_id |= CAN_RTR_FLAG;

 cf->can_dlc = get_can_dlc(msg->dlc & MCBA_DLC_MASK);

 memcpy(cf->data, msg->data, cf->can_dlc);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;

 can_led_event(priv->netdev, CAN_LED_EVENT_RX);
 netif_rx(skb);
}
