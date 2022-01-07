
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int real_num_tx_queues; } ;
struct TYPE_2__ {int gso_type; } ;


 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static u16 stmmac_select_queue(struct net_device *dev, struct sk_buff *skb,
          struct net_device *sb_dev)
{
 if (skb_shinfo(skb)->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {






  return 0;
 }

 return netdev_pick_tx(dev, skb, ((void*)0)) % dev->real_num_tx_queues;
}
