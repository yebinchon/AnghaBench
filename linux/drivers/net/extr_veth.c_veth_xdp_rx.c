
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int xdp_ring; } ;
struct sk_buff {int dummy; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ptr_ring_produce (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int veth_xdp_rx(struct veth_rq *rq, struct sk_buff *skb)
{
 if (unlikely(ptr_ring_produce(&rq->xdp_ring, skb))) {
  dev_kfree_skb_any(skb);
  return NET_RX_DROP;
 }

 return NET_RX_SUCCESS;
}
