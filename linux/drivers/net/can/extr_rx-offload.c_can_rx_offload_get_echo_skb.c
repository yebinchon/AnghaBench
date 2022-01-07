
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int tx_fifo_errors; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_rx_offload {struct net_device* dev; } ;


 struct sk_buff* __can_get_echo_skb (struct net_device*,unsigned int,unsigned int*) ;
 int can_rx_offload_queue_sorted (struct can_rx_offload*,struct sk_buff*,int ) ;

unsigned int can_rx_offload_get_echo_skb(struct can_rx_offload *offload,
      unsigned int idx, u32 timestamp)
{
 struct net_device *dev = offload->dev;
 struct net_device_stats *stats = &dev->stats;
 struct sk_buff *skb;
 u8 len;
 int err;

 skb = __can_get_echo_skb(dev, idx, &len);
 if (!skb)
  return 0;

 err = can_rx_offload_queue_sorted(offload, skb, timestamp);
 if (err) {
  stats->rx_errors++;
  stats->tx_fifo_errors++;
 }

 return len;
}
