
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int protocol; int pkt_type; } ;
struct net_device {TYPE_1__* dstats; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int rx_drps; } ;


 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 int PACKET_LOOPBACK ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_rx (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_orphan (struct sk_buff*) ;
 int this_cpu_inc (int ) ;
 int vrf_rx_stats (struct net_device*,int) ;

__attribute__((used)) static int vrf_local_xmit(struct sk_buff *skb, struct net_device *dev,
     struct dst_entry *dst)
{
 int len = skb->len;

 skb_orphan(skb);

 skb_dst_set(skb, dst);




 skb->pkt_type = PACKET_LOOPBACK;

 skb->protocol = eth_type_trans(skb, dev);

 if (likely(netif_rx(skb) == NET_RX_SUCCESS))
  vrf_rx_stats(dev, len);
 else
  this_cpu_inc(dev->dstats->rx_drps);

 return NETDEV_TX_OK;
}
