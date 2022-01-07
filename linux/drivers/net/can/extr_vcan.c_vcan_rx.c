
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; struct net_device* dev; int pkt_type; scalar_t__ data; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct canfd_frame {scalar_t__ len; } ;


 int CHECKSUM_UNNECESSARY ;
 int PACKET_BROADCAST ;
 int netif_rx_ni (struct sk_buff*) ;

__attribute__((used)) static void vcan_rx(struct sk_buff *skb, struct net_device *dev)
{
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
 struct net_device_stats *stats = &dev->stats;

 stats->rx_packets++;
 stats->rx_bytes += cfd->len;

 skb->pkt_type = PACKET_BROADCAST;
 skb->dev = dev;
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 netif_rx_ni(skb);
}
