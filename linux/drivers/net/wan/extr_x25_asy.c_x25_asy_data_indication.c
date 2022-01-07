
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static int x25_asy_data_indication(struct net_device *dev, struct sk_buff *skb)
{
 return netif_rx(skb);
}
