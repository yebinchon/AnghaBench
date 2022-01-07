
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;



__attribute__((used)) static int ppp_nl_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 return 0;
}
