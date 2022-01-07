
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct pucan_tx_msg {int client; int d; int channel_dlc; void* flags; void* can_id; void* type; void* size; } ;
struct TYPE_2__ {int ctrlmode; int echo_skb_max; int * echo_skb; } ;
struct peak_canfd_priv {int echo_idx; int (* write_tx_msg ) (struct peak_canfd_priv*,struct pucan_tx_msg*) ;int echo_lock; TYPE_1__ can; int index; struct pucan_tx_msg* (* alloc_tx_msg ) (struct peak_canfd_priv*,int ,int*) ;} ;
struct net_device_stats {int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct canfd_frame {int can_id; int flags; scalar_t__ len; int data; } ;
typedef int netdev_tx_t ;


 int ALIGN (scalar_t__,int) ;
 int CANFD_BRS ;
 int CANFD_ESI ;
 int CANFD_MAX_DLEN ;
 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_MAX_DLEN ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int PUCAN_MSG_BITRATE_SWITCH ;
 int PUCAN_MSG_CAN_TX ;
 int PUCAN_MSG_CHANNEL_DLC (int ,scalar_t__) ;
 int PUCAN_MSG_ERROR_STATE_IND ;
 int PUCAN_MSG_EXT_DATA_LEN ;
 int PUCAN_MSG_EXT_ID ;
 int PUCAN_MSG_LOOPED_BACK ;
 int PUCAN_MSG_RTR ;
 int PUCAN_MSG_SELF_RECEIVE ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 scalar_t__ can_is_canfd_skb (struct sk_buff*) ;
 scalar_t__ can_len2dlc (scalar_t__) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pucan_tx_msg* stub1 (struct peak_canfd_priv*,int ,int*) ;
 int stub2 (struct peak_canfd_priv*,struct pucan_tx_msg*) ;

__attribute__((used)) static netdev_tx_t peak_canfd_start_xmit(struct sk_buff *skb,
      struct net_device *ndev)
{
 struct peak_canfd_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 struct canfd_frame *cf = (struct canfd_frame *)skb->data;
 struct pucan_tx_msg *msg;
 u16 msg_size, msg_flags;
 unsigned long flags;
 bool should_stop_tx_queue;
 int room_left;
 u8 can_dlc;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;

 msg_size = ALIGN(sizeof(*msg) + cf->len, 4);
 msg = priv->alloc_tx_msg(priv, msg_size, &room_left);




 if (!msg) {
  stats->tx_dropped++;
  netif_stop_queue(ndev);
  return NETDEV_TX_BUSY;
 }

 msg->size = cpu_to_le16(msg_size);
 msg->type = cpu_to_le16(PUCAN_MSG_CAN_TX);
 msg_flags = 0;

 if (cf->can_id & CAN_EFF_FLAG) {
  msg_flags |= PUCAN_MSG_EXT_ID;
  msg->can_id = cpu_to_le32(cf->can_id & CAN_EFF_MASK);
 } else {
  msg->can_id = cpu_to_le32(cf->can_id & CAN_SFF_MASK);
 }

 if (can_is_canfd_skb(skb)) {

  can_dlc = can_len2dlc(cf->len);

  msg_flags |= PUCAN_MSG_EXT_DATA_LEN;

  if (cf->flags & CANFD_BRS)
   msg_flags |= PUCAN_MSG_BITRATE_SWITCH;

  if (cf->flags & CANFD_ESI)
   msg_flags |= PUCAN_MSG_ERROR_STATE_IND;
 } else {

  can_dlc = cf->len;

  if (cf->can_id & CAN_RTR_FLAG)
   msg_flags |= PUCAN_MSG_RTR;
 }


 msg_flags |= PUCAN_MSG_LOOPED_BACK;


 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  msg_flags |= PUCAN_MSG_SELF_RECEIVE;

 msg->flags = cpu_to_le16(msg_flags);
 msg->channel_dlc = PUCAN_MSG_CHANNEL_DLC(priv->index, can_dlc);
 memcpy(msg->d, cf->data, cf->len);


 msg->client = priv->echo_idx;

 spin_lock_irqsave(&priv->echo_lock, flags);


 can_put_echo_skb(skb, ndev, priv->echo_idx);


 priv->echo_idx = (priv->echo_idx + 1) % priv->can.echo_skb_max;





 should_stop_tx_queue = !!(priv->can.echo_skb[priv->echo_idx]);


 if (priv->can.ctrlmode & CAN_CTRLMODE_FD)
  should_stop_tx_queue |= (room_left <
     (sizeof(*msg) + CANFD_MAX_DLEN));
 else
  should_stop_tx_queue |= (room_left <
     (sizeof(*msg) + CAN_MAX_DLEN));

 if (should_stop_tx_queue)
  netif_stop_queue(ndev);

 spin_unlock_irqrestore(&priv->echo_lock, flags);


 priv->write_tx_msg(priv, msg);

 return NETDEV_TX_OK;
}
