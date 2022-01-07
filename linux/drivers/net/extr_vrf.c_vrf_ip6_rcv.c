
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;



__attribute__((used)) static struct sk_buff *vrf_ip6_rcv(struct net_device *vrf_dev,
       struct sk_buff *skb)
{
 return skb;
}
