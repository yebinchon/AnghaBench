
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ __dev_forward_skb (struct net_device*,struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int veth_xdp_rx (struct veth_rq*,struct sk_buff*) ;

__attribute__((used)) static int veth_forward_skb(struct net_device *dev, struct sk_buff *skb,
       struct veth_rq *rq, bool xdp)
{
 return __dev_forward_skb(dev, skb) ?: xdp ?
  veth_xdp_rx(rq, skb) :
  netif_rx(skb);
}
