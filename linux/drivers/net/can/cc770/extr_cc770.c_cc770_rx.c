
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct cc770_priv {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
struct TYPE_2__ {int * data; int * id; int config; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int MSGCFG_XTD ;
 int RMTPND_SET ;
 struct sk_buff* alloc_can_skb (struct net_device*,struct can_frame**) ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int get_can_dlc (int) ;
 TYPE_1__* msgobj ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void cc770_rx(struct net_device *dev, unsigned int mo, u8 ctrl1)
{
 struct cc770_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 u8 config;
 u32 id;
 int i;

 skb = alloc_can_skb(dev, &cf);
 if (!skb)
  return;

 config = cc770_read_reg(priv, msgobj[mo].config);

 if (ctrl1 & RMTPND_SET) {





  cf->can_id = CAN_RTR_FLAG;
  if (config & MSGCFG_XTD)
   cf->can_id |= CAN_EFF_FLAG;
  cf->can_dlc = 0;
 } else {
  if (config & MSGCFG_XTD) {
   id = cc770_read_reg(priv, msgobj[mo].id[3]);
   id |= cc770_read_reg(priv, msgobj[mo].id[2]) << 8;
   id |= cc770_read_reg(priv, msgobj[mo].id[1]) << 16;
   id |= cc770_read_reg(priv, msgobj[mo].id[0]) << 24;
   id >>= 3;
   id |= CAN_EFF_FLAG;
  } else {
   id = cc770_read_reg(priv, msgobj[mo].id[1]);
   id |= cc770_read_reg(priv, msgobj[mo].id[0]) << 8;
   id >>= 5;
  }

  cf->can_id = id;
  cf->can_dlc = get_can_dlc((config & 0xf0) >> 4);
  for (i = 0; i < cf->can_dlc; i++)
   cf->data[i] = cc770_read_reg(priv, msgobj[mo].data[i]);
 }

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);
}
