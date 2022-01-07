
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; int mark; struct net_device* dev; } ;
struct rtable {scalar_t__ rt_type; int dst; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; int ifindex; } ;
struct net {int dummy; } ;
struct iphdr {int saddr; int daddr; int tos; } ;
struct flowi4 {int saddr; int daddr; int flowi4_mark; int flowi4_flags; int flowi4_tos; int flowi4_oif; } ;


 int FLOWI_FLAG_ANYSRC ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int NET_XMIT_DROP ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ RTN_UNICAST ;
 int RT_TOS (int ) ;
 struct net* dev_net (struct net_device*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_out (struct net*,int ,struct sk_buff*) ;
 struct rtable* ip_route_output_flow (struct net*,struct flowi4*,int *) ;
 int ip_rt_put (struct rtable*) ;
 int kfree_skb (struct sk_buff*) ;
 int net_xmit_eval (int) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ipvlan_process_v4_outbound(struct sk_buff *skb)
{
 const struct iphdr *ip4h = ip_hdr(skb);
 struct net_device *dev = skb->dev;
 struct net *net = dev_net(dev);
 struct rtable *rt;
 int err, ret = NET_XMIT_DROP;
 struct flowi4 fl4 = {
  .flowi4_oif = dev->ifindex,
  .flowi4_tos = RT_TOS(ip4h->tos),
  .flowi4_flags = FLOWI_FLAG_ANYSRC,
  .flowi4_mark = skb->mark,
  .daddr = ip4h->daddr,
  .saddr = ip4h->saddr,
 };

 rt = ip_route_output_flow(net, &fl4, ((void*)0));
 if (IS_ERR(rt))
  goto err;

 if (rt->rt_type != RTN_UNICAST && rt->rt_type != RTN_LOCAL) {
  ip_rt_put(rt);
  goto err;
 }
 skb_dst_set(skb, &rt->dst);
 err = ip_local_out(net, skb->sk, skb);
 if (unlikely(net_xmit_eval(err)))
  dev->stats.tx_errors++;
 else
  ret = NET_XMIT_SUCCESS;
 goto out;
err:
 dev->stats.tx_errors++;
 kfree_skb(skb);
out:
 return ret;
}
