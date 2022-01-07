
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int protocol; struct net_device* dev; } ;
struct net_device {int dev_addr; int ptype_all; } ;
struct net {int dummy; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;


 scalar_t__ ETH_HLEN ;
 int dev_queue_xmit_nit (struct sk_buff*,struct net_device*) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 struct ethhdr* skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int vrf_finish_direct(struct net *net, struct sock *sk,
        struct sk_buff *skb)
{
 struct net_device *vrf_dev = skb->dev;

 if (!list_empty(&vrf_dev->ptype_all) &&
     likely(skb_headroom(skb) >= ETH_HLEN)) {
  struct ethhdr *eth = skb_push(skb, ETH_HLEN);

  ether_addr_copy(eth->h_source, vrf_dev->dev_addr);
  eth_zero_addr(eth->h_dest);
  eth->h_proto = skb->protocol;

  rcu_read_lock_bh();
  dev_queue_xmit_nit(skb, vrf_dev);
  rcu_read_unlock_bh();

  skb_pull(skb, ETH_HLEN);
 }

 return 1;
}
