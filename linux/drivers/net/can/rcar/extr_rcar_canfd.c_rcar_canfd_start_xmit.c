
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ctrlmode; scalar_t__ state; } ;
struct rcar_canfd_channel {int channel; size_t tx_head; size_t tx_tail; int tx_lock; int base; int * tx_len; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
struct canfd_frame {int can_id; int flags; int len; } ;
typedef int netdev_tx_t ;


 int CANFD_BRS ;
 int CAN_CTRLMODE_FD ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 scalar_t__ CAN_STATE_ERROR_PASSIVE ;
 int NETDEV_TX_OK ;
 int RCANFD_CFFDCSTS_CFBRS ;
 int RCANFD_CFFDCSTS_CFESI ;
 int RCANFD_CFFDCSTS_CFFDF ;
 int RCANFD_CFFIFO_IDX ;
 int RCANFD_CFID_CFIDE ;
 int RCANFD_CFID_CFRTR ;
 int RCANFD_CFPCTR (int,int ) ;
 int RCANFD_CFPTR_CFDLC (int ) ;
 int RCANFD_C_CFDF (int,int ,int ) ;
 int RCANFD_C_CFID (int,int ) ;
 int RCANFD_C_CFPTR (int,int ) ;
 size_t RCANFD_FIFO_DEPTH ;
 int RCANFD_F_CFDF (int,int ,int ) ;
 int RCANFD_F_CFFDCSTS (int,int ) ;
 int RCANFD_F_CFID (int,int ) ;
 int RCANFD_F_CFPTR (int,int ) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 scalar_t__ can_is_canfd_skb (struct sk_buff*) ;
 int can_len2dlc (int ) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,size_t) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rcar_canfd_put_data (struct rcar_canfd_channel*,struct canfd_frame*,int ) ;
 int rcar_canfd_write (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t rcar_canfd_start_xmit(struct sk_buff *skb,
      struct net_device *ndev)
{
 struct rcar_canfd_channel *priv = netdev_priv(ndev);
 struct canfd_frame *cf = (struct canfd_frame *)skb->data;
 u32 sts = 0, id, dlc;
 unsigned long flags;
 u32 ch = priv->channel;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;

 if (cf->can_id & CAN_EFF_FLAG) {
  id = cf->can_id & CAN_EFF_MASK;
  id |= RCANFD_CFID_CFIDE;
 } else {
  id = cf->can_id & CAN_SFF_MASK;
 }

 if (cf->can_id & CAN_RTR_FLAG)
  id |= RCANFD_CFID_CFRTR;

 dlc = RCANFD_CFPTR_CFDLC(can_len2dlc(cf->len));

 if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {
  rcar_canfd_write(priv->base,
     RCANFD_F_CFID(ch, RCANFD_CFFIFO_IDX), id);
  rcar_canfd_write(priv->base,
     RCANFD_F_CFPTR(ch, RCANFD_CFFIFO_IDX), dlc);

  if (can_is_canfd_skb(skb)) {

   sts |= RCANFD_CFFDCSTS_CFFDF;
   if (cf->flags & CANFD_BRS)
    sts |= RCANFD_CFFDCSTS_CFBRS;

   if (priv->can.state == CAN_STATE_ERROR_PASSIVE)
    sts |= RCANFD_CFFDCSTS_CFESI;
  }

  rcar_canfd_write(priv->base,
     RCANFD_F_CFFDCSTS(ch, RCANFD_CFFIFO_IDX), sts);

  rcar_canfd_put_data(priv, cf,
        RCANFD_F_CFDF(ch, RCANFD_CFFIFO_IDX, 0));
 } else {
  rcar_canfd_write(priv->base,
     RCANFD_C_CFID(ch, RCANFD_CFFIFO_IDX), id);
  rcar_canfd_write(priv->base,
     RCANFD_C_CFPTR(ch, RCANFD_CFFIFO_IDX), dlc);
  rcar_canfd_put_data(priv, cf,
        RCANFD_C_CFDF(ch, RCANFD_CFFIFO_IDX, 0));
 }

 priv->tx_len[priv->tx_head % RCANFD_FIFO_DEPTH] = cf->len;
 can_put_echo_skb(skb, ndev, priv->tx_head % RCANFD_FIFO_DEPTH);

 spin_lock_irqsave(&priv->tx_lock, flags);
 priv->tx_head++;


 if (priv->tx_head - priv->tx_tail >= RCANFD_FIFO_DEPTH)
  netif_stop_queue(ndev);




 rcar_canfd_write(priv->base,
    RCANFD_CFPCTR(ch, RCANFD_CFFIFO_IDX), 0xff);

 spin_unlock_irqrestore(&priv->tx_lock, flags);
 return NETDEV_TX_OK;
}
