
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dev; scalar_t__ sk; } ;
struct rtable {int dummy; } ;
struct net_device {scalar_t__ header_ops; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int IS_ERR (struct neighbour*) ;
 unsigned int LL_RESERVED_SPACE (struct net_device*) ;
 int consume_skb (struct sk_buff*) ;
 struct neighbour* ip_neigh_for_gw (struct rtable*,struct sk_buff*,int*) ;
 int neigh_output (struct neighbour*,struct sk_buff*,int) ;
 int nf_reset_ct (struct sk_buff*) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,unsigned int) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;
 int sock_confirm_neigh (struct sk_buff*,struct neighbour*) ;
 scalar_t__ unlikely (int) ;
 int vrf_tx_error (int ,struct sk_buff*) ;

__attribute__((used)) static int vrf_finish_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct rtable *rt = (struct rtable *)dst;
 struct net_device *dev = dst->dev;
 unsigned int hh_len = LL_RESERVED_SPACE(dev);
 struct neighbour *neigh;
 bool is_v6gw = 0;
 int ret = -EINVAL;

 nf_reset_ct(skb);


 if (unlikely(skb_headroom(skb) < hh_len && dev->header_ops)) {
  struct sk_buff *skb2;

  skb2 = skb_realloc_headroom(skb, LL_RESERVED_SPACE(dev));
  if (!skb2) {
   ret = -ENOMEM;
   goto err;
  }
  if (skb->sk)
   skb_set_owner_w(skb2, skb->sk);

  consume_skb(skb);
  skb = skb2;
 }

 rcu_read_lock_bh();

 neigh = ip_neigh_for_gw(rt, skb, &is_v6gw);
 if (!IS_ERR(neigh)) {
  sock_confirm_neigh(skb, neigh);

  ret = neigh_output(neigh, skb, is_v6gw);
  rcu_read_unlock_bh();
  return ret;
 }

 rcu_read_unlock_bh();
err:
 vrf_tx_error(skb->dev, skb);
 return ret;
}
