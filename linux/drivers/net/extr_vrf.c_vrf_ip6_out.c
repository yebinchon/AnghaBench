
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;



__attribute__((used)) static struct sk_buff *vrf_ip6_out(struct net_device *vrf_dev,
       struct sock *sk,
       struct sk_buff *skb)
{
 return skb;
}
