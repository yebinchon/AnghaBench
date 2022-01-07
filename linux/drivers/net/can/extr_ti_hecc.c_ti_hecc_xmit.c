
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {int tx_head; int mbx_lock; int tx_tail; int ndev; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_dlc; int can_id; scalar_t__ data; } ;
typedef int netdev_tx_t ;
typedef int __be32 ;


 int BIT (int) ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int HECC_CANMCF ;
 int HECC_CANMCF_RTR ;
 int HECC_CANMDH ;
 int HECC_CANMDL ;
 int HECC_CANME ;
 int HECC_CANMID ;
 int HECC_CANMID_IDE ;
 int HECC_CANTRS ;
 int HECC_TX_MASK ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int be32_to_cpu (int ) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 int get_tx_head_mb (struct ti_hecc_priv*) ;
 int get_tx_head_prio (struct ti_hecc_priv*) ;
 int hecc_read (struct ti_hecc_priv*,int ) ;
 int hecc_set_bit (struct ti_hecc_priv*,int ,int) ;
 int hecc_write (struct ti_hecc_priv*,int ,int) ;
 int hecc_write_mbx (struct ti_hecc_priv*,int,int ,int) ;
 int netdev_err (int ,char*,int,int ) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t ti_hecc_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 u32 mbxno, mbx_mask, data;
 unsigned long flags;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;

 mbxno = get_tx_head_mb(priv);
 mbx_mask = BIT(mbxno);
 spin_lock_irqsave(&priv->mbx_lock, flags);
 if (unlikely(hecc_read(priv, HECC_CANME) & mbx_mask)) {
  spin_unlock_irqrestore(&priv->mbx_lock, flags);
  netif_stop_queue(ndev);
  netdev_err(priv->ndev,
      "BUG: TX mbx not ready tx_head=%08X, tx_tail=%08X\n",
      priv->tx_head, priv->tx_tail);
  return NETDEV_TX_BUSY;
 }
 spin_unlock_irqrestore(&priv->mbx_lock, flags);


 data = cf->can_dlc | (get_tx_head_prio(priv) << 8);
 if (cf->can_id & CAN_RTR_FLAG)
  data |= HECC_CANMCF_RTR;
 hecc_write_mbx(priv, mbxno, HECC_CANMCF, data);

 if (cf->can_id & CAN_EFF_FLAG)
  data = (cf->can_id & CAN_EFF_MASK) | HECC_CANMID_IDE;
 else
  data = (cf->can_id & CAN_SFF_MASK) << 18;
 hecc_write_mbx(priv, mbxno, HECC_CANMID, data);
 hecc_write_mbx(priv, mbxno, HECC_CANMDL,
         be32_to_cpu(*(__be32 *)(cf->data)));
 if (cf->can_dlc > 4)
  hecc_write_mbx(priv, mbxno, HECC_CANMDH,
          be32_to_cpu(*(__be32 *)(cf->data + 4)));
 else
  *(u32 *)(cf->data + 4) = 0;
 can_put_echo_skb(skb, ndev, mbxno);

 spin_lock_irqsave(&priv->mbx_lock, flags);
 --priv->tx_head;
 if ((hecc_read(priv, HECC_CANME) & BIT(get_tx_head_mb(priv))) ||
     (priv->tx_head & HECC_TX_MASK) == HECC_TX_MASK) {
  netif_stop_queue(ndev);
 }
 hecc_set_bit(priv, HECC_CANME, mbx_mask);
 spin_unlock_irqrestore(&priv->mbx_lock, flags);

 hecc_write(priv, HECC_CANTRS, mbx_mask);

 return NETDEV_TX_OK;
}
