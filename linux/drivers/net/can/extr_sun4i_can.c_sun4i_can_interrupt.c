
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun4ican_priv {scalar_t__ base; } ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef int irqreturn_t ;


 int CAN_LED_EVENT_TX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SUN4I_CAN_MAX_IRQ ;
 int SUN4I_INT_ARB_LOST ;
 int SUN4I_INT_BUS_ERR ;
 int SUN4I_INT_DATA_OR ;
 int SUN4I_INT_ERR_PASSIVE ;
 int SUN4I_INT_ERR_WRN ;
 int SUN4I_INT_RBUF_VLD ;
 int SUN4I_INT_TBUF_VLD ;
 int SUN4I_INT_WAKEUP ;
 scalar_t__ SUN4I_REG_INT_ADDR ;
 scalar_t__ SUN4I_REG_RBUF_RBACK_START_ADDR ;
 scalar_t__ SUN4I_REG_STA_ADDR ;
 int SUN4I_STA_RBUF_RDY ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int readl (scalar_t__) ;
 scalar_t__ sun4i_can_err (struct net_device*,int,int) ;
 int sun4i_can_rx (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sun4i_can_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct sun4ican_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 u8 isrc, status;
 int n = 0;

 while ((isrc = readl(priv->base + SUN4I_REG_INT_ADDR)) &&
        (n < SUN4I_CAN_MAX_IRQ)) {
  n++;
  status = readl(priv->base + SUN4I_REG_STA_ADDR);

  if (isrc & SUN4I_INT_WAKEUP)
   netdev_warn(dev, "wakeup interrupt\n");

  if (isrc & SUN4I_INT_TBUF_VLD) {

   stats->tx_bytes +=
       readl(priv->base +
      SUN4I_REG_RBUF_RBACK_START_ADDR) & 0xf;
   stats->tx_packets++;
   can_get_echo_skb(dev, 0);
   netif_wake_queue(dev);
   can_led_event(dev, CAN_LED_EVENT_TX);
  }
  if ((isrc & SUN4I_INT_RBUF_VLD) &&
      !(isrc & SUN4I_INT_DATA_OR)) {

   while (status & SUN4I_STA_RBUF_RDY) {

    sun4i_can_rx(dev);
    status = readl(priv->base + SUN4I_REG_STA_ADDR);
   }
  }
  if (isrc &
      (SUN4I_INT_DATA_OR | SUN4I_INT_ERR_WRN | SUN4I_INT_BUS_ERR |
       SUN4I_INT_ERR_PASSIVE | SUN4I_INT_ARB_LOST)) {

   if (sun4i_can_err(dev, isrc, status))
    netdev_err(dev, "can't allocate buffer - clearing pending interrupts\n");
  }

  writel(isrc, priv->base + SUN4I_REG_INT_ADDR);
  readl(priv->base + SUN4I_REG_INT_ADDR);
 }
 if (n >= SUN4I_CAN_MAX_IRQ)
  netdev_dbg(dev, "%d messages handled in ISR", n);

 return (n) ? IRQ_HANDLED : IRQ_NONE;
}
