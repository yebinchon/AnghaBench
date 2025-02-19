
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sk_buff {int dummy; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;} ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_dlc; int* data; int can_id; } ;
typedef int canid_t ;


 int CAN_EFF_FLAG ;
 int CAN_LED_EVENT_RX ;
 int CAN_RTR_FLAG ;
 int CMD_RRB ;
 int SJA1000_EFF_BUF ;
 int SJA1000_FI ;
 int SJA1000_FI_FF ;
 int SJA1000_FI_RTR ;
 int SJA1000_ID1 ;
 int SJA1000_ID2 ;
 int SJA1000_ID3 ;
 int SJA1000_ID4 ;
 int SJA1000_SFF_BUF ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int can_led_event (struct net_device*,int ) ;
 int get_can_dlc (int) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int sja1000_write_cmdreg (struct sja1000_priv*,int ) ;
 int stub1 (struct sja1000_priv*,int ) ;
 int stub2 (struct sja1000_priv*,int ) ;
 int stub3 (struct sja1000_priv*,int ) ;
 int stub4 (struct sja1000_priv*,int ) ;
 int stub5 (struct sja1000_priv*,int ) ;
 int stub6 (struct sja1000_priv*,int ) ;
 int stub7 (struct sja1000_priv*,int ) ;
 int stub8 (struct sja1000_priv*,int ) ;

__attribute__((used)) static void sja1000_rx(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 uint8_t fi;
 uint8_t dreg;
 canid_t id;
 int i;


 skb = alloc_can_skb(dev, &cf);
 if (skb == ((void*)0))
  return;

 fi = priv->read_reg(priv, SJA1000_FI);

 if (fi & SJA1000_FI_FF) {

  dreg = SJA1000_EFF_BUF;
  id = (priv->read_reg(priv, SJA1000_ID1) << 21)
      | (priv->read_reg(priv, SJA1000_ID2) << 13)
      | (priv->read_reg(priv, SJA1000_ID3) << 5)
      | (priv->read_reg(priv, SJA1000_ID4) >> 3);
  id |= CAN_EFF_FLAG;
 } else {

  dreg = SJA1000_SFF_BUF;
  id = (priv->read_reg(priv, SJA1000_ID1) << 3)
      | (priv->read_reg(priv, SJA1000_ID2) >> 5);
 }

 cf->can_dlc = get_can_dlc(fi & 0x0F);
 if (fi & SJA1000_FI_RTR) {
  id |= CAN_RTR_FLAG;
 } else {
  for (i = 0; i < cf->can_dlc; i++)
   cf->data[i] = priv->read_reg(priv, dreg++);
 }

 cf->can_id = id;


 sja1000_write_cmdreg(priv, CMD_RRB);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);

 can_led_event(dev, CAN_LED_EVENT_RX);
}
