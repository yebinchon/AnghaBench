
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xcan_priv {unsigned int tx_head; int tx_tail; unsigned int tx_max; int (* read_reg ) (struct xcan_priv*,int ) ;int tx_lock; int (* write_reg ) (struct xcan_priv*,int ,int) ;} ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;


 int CAN_LED_EVENT_TX ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int XCAN_ICR_OFFSET ;
 int XCAN_ISR_OFFSET ;
 int XCAN_IXR_TXFEMP_MASK ;
 int XCAN_IXR_TXOK_MASK ;
 scalar_t__ can_get_echo_skb (struct net_device*,int) ;
 int can_led_event (struct net_device*,int ) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xcan_priv*,int ,int) ;
 int stub2 (struct xcan_priv*,int ,int) ;
 int stub3 (struct xcan_priv*,int ) ;
 int stub4 (struct xcan_priv*,int ,int) ;
 int xcan_update_error_state_after_rxtx (struct net_device*) ;

__attribute__((used)) static void xcan_tx_interrupt(struct net_device *ndev, u32 isr)
{
 struct xcan_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 unsigned int frames_in_fifo;
 int frames_sent = 1;
 unsigned long flags;
 int retries = 0;







 spin_lock_irqsave(&priv->tx_lock, flags);

 frames_in_fifo = priv->tx_head - priv->tx_tail;

 if (WARN_ON_ONCE(frames_in_fifo == 0)) {

  priv->write_reg(priv, XCAN_ICR_OFFSET, XCAN_IXR_TXOK_MASK);
  spin_unlock_irqrestore(&priv->tx_lock, flags);
  return;
 }




 if (frames_in_fifo > 1) {
  WARN_ON(frames_in_fifo > priv->tx_max);
  while ((isr & XCAN_IXR_TXOK_MASK) &&
         !WARN_ON(++retries == 100)) {
   priv->write_reg(priv, XCAN_ICR_OFFSET,
     XCAN_IXR_TXOK_MASK);
   isr = priv->read_reg(priv, XCAN_ISR_OFFSET);
  }

  if (isr & XCAN_IXR_TXFEMP_MASK) {

   frames_sent = frames_in_fifo;
  }
 } else {

  priv->write_reg(priv, XCAN_ICR_OFFSET, XCAN_IXR_TXOK_MASK);
 }

 while (frames_sent--) {
  stats->tx_bytes += can_get_echo_skb(ndev, priv->tx_tail %
          priv->tx_max);
  priv->tx_tail++;
  stats->tx_packets++;
 }

 netif_wake_queue(ndev);

 spin_unlock_irqrestore(&priv->tx_lock, flags);

 can_led_event(ndev, CAN_LED_EVENT_TX);
 xcan_update_error_state_after_rxtx(ndev);
}
