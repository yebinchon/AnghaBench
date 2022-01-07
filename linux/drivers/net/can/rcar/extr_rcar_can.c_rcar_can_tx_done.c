
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rcar_can_priv {int tx_head; size_t tx_tail; TYPE_1__* regs; scalar_t__* tx_dlc; } ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {int isr; int tfcr; } ;


 int CAN_LED_EVENT_TX ;
 size_t RCAR_CAN_FIFO_DEPTH ;
 int RCAR_CAN_ISR_TXFF ;
 int RCAR_CAN_TFCR_TFUST ;
 int RCAR_CAN_TFCR_TFUST_SHIFT ;
 int can_get_echo_skb (struct net_device*,size_t) ;
 int can_led_event (struct net_device*,int ) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void rcar_can_tx_done(struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 u8 isr;

 while (1) {
  u8 unsent = readb(&priv->regs->tfcr);

  unsent = (unsent & RCAR_CAN_TFCR_TFUST) >>
     RCAR_CAN_TFCR_TFUST_SHIFT;
  if (priv->tx_head - priv->tx_tail <= unsent)
   break;
  stats->tx_packets++;
  stats->tx_bytes += priv->tx_dlc[priv->tx_tail %
      RCAR_CAN_FIFO_DEPTH];
  priv->tx_dlc[priv->tx_tail % RCAR_CAN_FIFO_DEPTH] = 0;
  can_get_echo_skb(ndev, priv->tx_tail % RCAR_CAN_FIFO_DEPTH);
  priv->tx_tail++;
  netif_wake_queue(ndev);
 }

 isr = readb(&priv->regs->isr);
 writeb(isr & ~RCAR_CAN_ISR_TXFF, &priv->regs->isr);
 can_led_event(ndev, CAN_LED_EVENT_TX);
}
