
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; int * data; int can_id; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void at91_rx_overflow_err(struct net_device *dev)
{
 struct net_device_stats *stats = &dev->stats;
 struct sk_buff *skb;
 struct can_frame *cf;

 netdev_dbg(dev, "RX buffer overflow\n");
 stats->rx_over_errors++;
 stats->rx_errors++;

 skb = alloc_can_err_skb(dev, &cf);
 if (unlikely(!skb))
  return;

 cf->can_id |= CAN_ERR_CRTL;
 cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_receive_skb(skb);
}
