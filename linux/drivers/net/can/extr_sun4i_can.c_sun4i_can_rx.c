
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sun4ican_priv {scalar_t__ base; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_dlc; int* data; int can_id; } ;
typedef int canid_t ;


 int CAN_EFF_FLAG ;
 int CAN_LED_EVENT_RX ;
 int CAN_RTR_FLAG ;
 int SUN4I_CMD_RELEASE_RBUF ;
 int SUN4I_MSG_EFF_FLAG ;
 int SUN4I_MSG_RTR_FLAG ;
 scalar_t__ SUN4I_REG_BUF0_ADDR ;
 scalar_t__ SUN4I_REG_BUF1_ADDR ;
 scalar_t__ SUN4I_REG_BUF2_ADDR ;
 scalar_t__ SUN4I_REG_BUF3_ADDR ;
 scalar_t__ SUN4I_REG_BUF4_ADDR ;
 scalar_t__ SUN4I_REG_BUF5_ADDR ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int can_led_event (struct net_device*,int ) ;
 int get_can_dlc (int) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int readl (scalar_t__) ;
 int sun4i_can_write_cmdreg (struct sun4ican_priv*,int ) ;

__attribute__((used)) static void sun4i_can_rx(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 u8 fi;
 u32 dreg;
 canid_t id;
 int i;


 skb = alloc_can_skb(dev, &cf);
 if (!skb)
  return;

 fi = readl(priv->base + SUN4I_REG_BUF0_ADDR);
 cf->can_dlc = get_can_dlc(fi & 0x0F);
 if (fi & SUN4I_MSG_EFF_FLAG) {
  dreg = SUN4I_REG_BUF5_ADDR;
  id = (readl(priv->base + SUN4I_REG_BUF1_ADDR) << 21) |
       (readl(priv->base + SUN4I_REG_BUF2_ADDR) << 13) |
       (readl(priv->base + SUN4I_REG_BUF3_ADDR) << 5) |
      ((readl(priv->base + SUN4I_REG_BUF4_ADDR) >> 3) & 0x1f);
  id |= CAN_EFF_FLAG;
 } else {
  dreg = SUN4I_REG_BUF3_ADDR;
  id = (readl(priv->base + SUN4I_REG_BUF1_ADDR) << 3) |
      ((readl(priv->base + SUN4I_REG_BUF2_ADDR) >> 5) & 0x7);
 }


 if (fi & SUN4I_MSG_RTR_FLAG)
  id |= CAN_RTR_FLAG;
 else
  for (i = 0; i < cf->can_dlc; i++)
   cf->data[i] = readl(priv->base + dreg + i * 4);

 cf->can_id = id;

 sun4i_can_write_cmdreg(priv, SUN4I_CMD_RELEASE_RBUF);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);

 can_led_event(dev, CAN_LED_EVENT_RX);
}
