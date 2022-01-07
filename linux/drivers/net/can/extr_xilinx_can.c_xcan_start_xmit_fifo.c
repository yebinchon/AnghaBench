
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int ) ;int tx_head; int tx_max; int tx_tail; int tx_lock; int (* write_reg ) (struct xcan_priv*,int ,int ) ;} ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOSPC ;
 int XCAN_ICR_OFFSET ;
 int XCAN_IXR_TXFEMP_MASK ;
 int XCAN_SR_OFFSET ;
 int XCAN_SR_TXFLL_MASK ;
 int XCAN_TXFIFO_OFFSET ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xcan_priv*,int ) ;
 int stub2 (struct xcan_priv*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int xcan_write_frame (struct xcan_priv*,struct sk_buff*,int ) ;

__attribute__((used)) static int xcan_start_xmit_fifo(struct sk_buff *skb, struct net_device *ndev)
{
 struct xcan_priv *priv = netdev_priv(ndev);
 unsigned long flags;


 if (unlikely(priv->read_reg(priv, XCAN_SR_OFFSET) &
   XCAN_SR_TXFLL_MASK))
  return -ENOSPC;

 can_put_echo_skb(skb, ndev, priv->tx_head % priv->tx_max);

 spin_lock_irqsave(&priv->tx_lock, flags);

 priv->tx_head++;

 xcan_write_frame(priv, skb, XCAN_TXFIFO_OFFSET);


 if (priv->tx_max > 1)
  priv->write_reg(priv, XCAN_ICR_OFFSET, XCAN_IXR_TXFEMP_MASK);


 if ((priv->tx_head - priv->tx_tail) == priv->tx_max)
  netif_stop_queue(ndev);

 spin_unlock_irqrestore(&priv->tx_lock, flags);

 return 0;
}
