
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int tx_dropped; } ;
struct net_device {int dummy; } ;
struct mcba_usb_msg_can {int dlc; int data; scalar_t__ eid; scalar_t__ sid; int cmd_id; } ;
struct mcba_usb_msg {int dummy; } ;
struct mcba_usb_ctx {int ndx; } ;
struct mcba_priv {TYPE_1__* netdev; } ;
struct can_frame {int can_id; int data; int can_dlc; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {struct net_device_stats stats; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int MBCA_CMD_TRANSMIT_MESSAGE_EV ;
 int MCBA_DLC_RTR_MASK ;
 int MCBA_SIDL_EXID_MASK ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_free_echo_skb (TYPE_1__*,int ) ;
 int can_put_echo_skb (struct sk_buff*,TYPE_1__*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mcba_usb_free_ctx (struct mcba_usb_ctx*) ;
 struct mcba_usb_ctx* mcba_usb_get_free_ctx (struct mcba_priv*,struct can_frame*) ;
 int mcba_usb_xmit (struct mcba_priv*,struct mcba_usb_msg*,struct mcba_usb_ctx*) ;
 int memcpy (int ,int ,int ) ;
 struct mcba_priv* netdev_priv (struct net_device*) ;
 int put_unaligned_be16 (int,scalar_t__*) ;

__attribute__((used)) static netdev_tx_t mcba_usb_start_xmit(struct sk_buff *skb,
           struct net_device *netdev)
{
 struct mcba_priv *priv = netdev_priv(netdev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 struct mcba_usb_ctx *ctx = ((void*)0);
 struct net_device_stats *stats = &priv->netdev->stats;
 u16 sid;
 int err;
 struct mcba_usb_msg_can usb_msg = {
  .cmd_id = MBCA_CMD_TRANSMIT_MESSAGE_EV
 };

 if (can_dropped_invalid_skb(netdev, skb))
  return NETDEV_TX_OK;

 ctx = mcba_usb_get_free_ctx(priv, cf);
 if (!ctx)
  return NETDEV_TX_BUSY;

 can_put_echo_skb(skb, priv->netdev, ctx->ndx);

 if (cf->can_id & CAN_EFF_FLAG) {



  sid = MCBA_SIDL_EXID_MASK;

  sid |= (cf->can_id & 0x1ffc0000) >> 13;

  sid |= (cf->can_id & 0x30000) >> 16;
  put_unaligned_be16(sid, &usb_msg.sid);


  put_unaligned_be16(cf->can_id & 0xffff, &usb_msg.eid);
 } else {



  put_unaligned_be16((cf->can_id & CAN_SFF_MASK) << 5,
       &usb_msg.sid);
  usb_msg.eid = 0;
 }

 usb_msg.dlc = cf->can_dlc;

 memcpy(usb_msg.data, cf->data, usb_msg.dlc);

 if (cf->can_id & CAN_RTR_FLAG)
  usb_msg.dlc |= MCBA_DLC_RTR_MASK;

 err = mcba_usb_xmit(priv, (struct mcba_usb_msg *)&usb_msg, ctx);
 if (err)
  goto xmit_failed;

 return NETDEV_TX_OK;

xmit_failed:
 can_free_echo_skb(priv->netdev, ctx->ndx);
 mcba_usb_free_ctx(ctx);
 dev_kfree_skb(skb);
 stats->tx_dropped++;

 return NETDEV_TX_OK;
}
