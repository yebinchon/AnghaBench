
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int vrf_rcv_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 kfree_skb(skb);
 return 0;
}
