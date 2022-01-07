
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctrlmode; } ;
struct ucan_priv {TYPE_4__* netdev; TYPE_1__ can; } ;
struct TYPE_8__ {int data; int id; } ;
struct TYPE_7__ {TYPE_3__ can_msg; } ;
struct ucan_message_in {TYPE_2__ msg; int len; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int data; } ;
typedef int canid_t ;
struct TYPE_9__ {struct net_device_stats stats; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_ERR_FLAG ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int UCAN_IN_HDR_SIZE ;
 struct sk_buff* alloc_can_skb (TYPE_4__*,struct can_frame**) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int netdev_warn (TYPE_4__*,char*,int,...) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ ucan_get_can_dlc (TYPE_3__*,int) ;
 int ucan_handle_error_frame (struct ucan_priv*,struct ucan_message_in*,int) ;

__attribute__((used)) static void ucan_rx_can_msg(struct ucan_priv *up, struct ucan_message_in *m)
{
 int len;
 canid_t canid;
 struct can_frame *cf;
 struct sk_buff *skb;
 struct net_device_stats *stats = &up->netdev->stats;


 len = le16_to_cpu(m->len);


 if (len < UCAN_IN_HDR_SIZE + sizeof(m->msg.can_msg.id)) {
  netdev_warn(up->netdev, "invalid input message len: %d\n", len);
  return;
 }


 canid = le32_to_cpu(m->msg.can_msg.id);
 if (canid & CAN_ERR_FLAG) {
  bool busstate_changed = ucan_handle_error_frame(up, m, canid);


  if (!(up->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING) &&
      !busstate_changed)
   return;
 } else {
  canid_t canid_mask;

  canid_mask = CAN_RTR_FLAG;
  if (canid & CAN_EFF_FLAG)
   canid_mask |= CAN_EFF_MASK | CAN_EFF_FLAG;
  else
   canid_mask |= CAN_SFF_MASK;

  if (canid & ~canid_mask)
   netdev_warn(up->netdev,
        "unexpected bits set (canid %x, mask %x)",
        canid, canid_mask);

  canid &= canid_mask;
 }


 skb = alloc_can_skb(up->netdev, &cf);
 if (!skb)
  return;


 cf->can_id = canid;


 cf->can_dlc = ucan_get_can_dlc(&m->msg.can_msg, len);


 if (!(cf->can_id & CAN_RTR_FLAG) || (cf->can_id & CAN_ERR_FLAG))
  memcpy(cf->data, m->msg.can_msg.data, cf->can_dlc);


 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;


 netif_rx(skb);
}
