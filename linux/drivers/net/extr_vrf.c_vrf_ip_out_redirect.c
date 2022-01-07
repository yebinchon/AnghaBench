
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net_vrf {int rth; } ;
struct net_device {int dummy; } ;


 int dst_hold (struct dst_entry*) ;
 scalar_t__ likely (struct rtable*) ;
 struct net_vrf* netdev_priv (struct net_device*) ;
 struct rtable* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ unlikely (int) ;
 int vrf_tx_error (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *vrf_ip_out_redirect(struct net_device *vrf_dev,
        struct sk_buff *skb)
{
 struct net_vrf *vrf = netdev_priv(vrf_dev);
 struct dst_entry *dst = ((void*)0);
 struct rtable *rth;

 rcu_read_lock();

 rth = rcu_dereference(vrf->rth);
 if (likely(rth)) {
  dst = &rth->dst;
  dst_hold(dst);
 }

 rcu_read_unlock();

 if (unlikely(!dst)) {
  vrf_tx_error(vrf_dev, skb);
  return ((void*)0);
 }

 skb_dst_drop(skb);
 skb_dst_set(skb, dst);

 return skb;
}
