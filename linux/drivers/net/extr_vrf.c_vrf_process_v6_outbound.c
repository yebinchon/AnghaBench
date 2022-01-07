
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NET_XMIT_DROP ;
 int vrf_tx_error (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t vrf_process_v6_outbound(struct sk_buff *skb,
        struct net_device *dev)
{
 vrf_tx_error(dev, skb);
 return NET_XMIT_DROP;
}
