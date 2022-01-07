
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {scalar_t__ data; } ;
struct rcar_can_priv {int* tx_dlc; size_t tx_head; size_t tx_tail; TYPE_2__* regs; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; size_t can_dlc; int* data; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int tfpcr; TYPE_1__* mb; } ;
struct TYPE_3__ {int dlc; int id; int * data; } ;


 int CAN_EFF_FLAG ;
 size_t CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 size_t CAN_SFF_MASK ;
 int NETDEV_TX_OK ;
 size_t RCAR_CAN_FIFO_DEPTH ;
 size_t RCAR_CAN_IDE ;
 size_t RCAR_CAN_RTR ;
 size_t RCAR_CAN_SID_SHIFT ;
 size_t RCAR_CAN_TX_FIFO_MBX ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,size_t) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int writeb (int,int *) ;
 int writel (size_t,int *) ;

__attribute__((used)) static netdev_tx_t rcar_can_start_xmit(struct sk_buff *skb,
           struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 u32 data, i;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;

 if (cf->can_id & CAN_EFF_FLAG)
  data = (cf->can_id & CAN_EFF_MASK) | RCAR_CAN_IDE;
 else
  data = (cf->can_id & CAN_SFF_MASK) << RCAR_CAN_SID_SHIFT;

 if (cf->can_id & CAN_RTR_FLAG) {
  data |= RCAR_CAN_RTR;
 } else {
  for (i = 0; i < cf->can_dlc; i++)
   writeb(cf->data[i],
          &priv->regs->mb[RCAR_CAN_TX_FIFO_MBX].data[i]);
 }

 writel(data, &priv->regs->mb[RCAR_CAN_TX_FIFO_MBX].id);

 writeb(cf->can_dlc, &priv->regs->mb[RCAR_CAN_TX_FIFO_MBX].dlc);

 priv->tx_dlc[priv->tx_head % RCAR_CAN_FIFO_DEPTH] = cf->can_dlc;
 can_put_echo_skb(skb, ndev, priv->tx_head % RCAR_CAN_FIFO_DEPTH);
 priv->tx_head++;




 writeb(0xff, &priv->regs->tfpcr);

 if (priv->tx_head - priv->tx_tail >= RCAR_CAN_FIFO_DEPTH)
  netif_stop_queue(ndev);

 return NETDEV_TX_OK;
}
