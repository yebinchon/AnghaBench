
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct pucan_rx_msg {int d; int can_id; int client; int flags; } ;
struct peak_canfd_priv {TYPE_1__* ndev; int echo_lock; } ;
struct net_device_stats {int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; } ;
struct canfd_frame {scalar_t__ len; int data; int can_id; int flags; } ;
struct can_frame {int dummy; } ;
struct TYPE_5__ {struct net_device_stats stats; } ;


 int CANFD_BRS ;
 int CANFD_ESI ;
 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int ENOMEM ;
 int const PUCAN_MSG_BITRATE_SWITCH ;
 int const PUCAN_MSG_ERROR_STATE_IND ;
 int const PUCAN_MSG_EXT_DATA_LEN ;
 int const PUCAN_MSG_EXT_ID ;
 int const PUCAN_MSG_LOOPED_BACK ;
 int const PUCAN_MSG_RTR ;
 int const PUCAN_MSG_SELF_RECEIVE ;
 struct sk_buff* alloc_can_skb (TYPE_1__*,struct can_frame**) ;
 struct sk_buff* alloc_canfd_skb (TYPE_1__*,struct canfd_frame**) ;
 scalar_t__ can_dlc2len (int ) ;
 int can_get_echo_skb (TYPE_1__*,int ) ;
 scalar_t__ get_can_dlc (int ) ;
 int get_canfd_dlc (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;
 int netif_wake_queue (TYPE_1__*) ;
 int pucan_msg_get_dlc (struct pucan_rx_msg*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pucan_handle_can_rx(struct peak_canfd_priv *priv,
          struct pucan_rx_msg *msg)
{
 struct net_device_stats *stats = &priv->ndev->stats;
 struct canfd_frame *cf;
 struct sk_buff *skb;
 const u16 rx_msg_flags = le16_to_cpu(msg->flags);
 u8 cf_len;

 if (rx_msg_flags & PUCAN_MSG_EXT_DATA_LEN)
  cf_len = can_dlc2len(get_canfd_dlc(pucan_msg_get_dlc(msg)));
 else
  cf_len = get_can_dlc(pucan_msg_get_dlc(msg));


 if ((rx_msg_flags & PUCAN_MSG_LOOPED_BACK) &&
     !(rx_msg_flags & PUCAN_MSG_SELF_RECEIVE)) {
  unsigned long flags;

  spin_lock_irqsave(&priv->echo_lock, flags);
  can_get_echo_skb(priv->ndev, msg->client);


  stats->tx_bytes += cf_len;
  stats->tx_packets++;


  netif_wake_queue(priv->ndev);

  spin_unlock_irqrestore(&priv->echo_lock, flags);
  return 0;
 }


 if (rx_msg_flags & PUCAN_MSG_EXT_DATA_LEN) {

  skb = alloc_canfd_skb(priv->ndev, &cf);
  if (!skb)
   return -ENOMEM;

  if (rx_msg_flags & PUCAN_MSG_BITRATE_SWITCH)
   cf->flags |= CANFD_BRS;

  if (rx_msg_flags & PUCAN_MSG_ERROR_STATE_IND)
   cf->flags |= CANFD_ESI;
 } else {

  skb = alloc_can_skb(priv->ndev, (struct can_frame **)&cf);
  if (!skb)
   return -ENOMEM;
 }

 cf->can_id = le32_to_cpu(msg->can_id);
 cf->len = cf_len;

 if (rx_msg_flags & PUCAN_MSG_EXT_ID)
  cf->can_id |= CAN_EFF_FLAG;

 if (rx_msg_flags & PUCAN_MSG_RTR)
  cf->can_id |= CAN_RTR_FLAG;
 else
  memcpy(cf->data, msg->d, cf->len);

 stats->rx_bytes += cf->len;
 stats->rx_packets++;

 netif_rx(skb);

 return 0;
}
