
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; scalar_t__ data; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct canfd_frame {scalar_t__ len; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 scalar_t__ PACKET_LOOPBACK ;
 struct sk_buff* can_create_echo_skb (struct sk_buff*) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 int echo ;
 int vcan_rx (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static netdev_tx_t vcan_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
 struct net_device_stats *stats = &dev->stats;
 int loop;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 stats->tx_packets++;
 stats->tx_bytes += cfd->len;


 loop = skb->pkt_type == PACKET_LOOPBACK;

 if (!echo) {

  if (loop) {



   stats->rx_packets++;
   stats->rx_bytes += cfd->len;
  }
  consume_skb(skb);
  return NETDEV_TX_OK;
 }



 if (loop) {
  skb = can_create_echo_skb(skb);
  if (!skb)
   return NETDEV_TX_OK;


  vcan_rx(skb, dev);
 } else {

  consume_skb(skb);
 }
 return NETDEV_TX_OK;
}
