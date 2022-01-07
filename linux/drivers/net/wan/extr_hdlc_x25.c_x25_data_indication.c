
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int protocol; } ;
struct net_device {int dummy; } ;


 int NET_RX_DROP ;
 unsigned char X25_IFACE_DATA ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_cow (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int x25_type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static int x25_data_indication(struct net_device *dev, struct sk_buff *skb)
{
 unsigned char *ptr;

 skb_push(skb, 1);

 if (skb_cow(skb, 1))
  return NET_RX_DROP;

 ptr = skb->data;
 *ptr = X25_IFACE_DATA;

 skb->protocol = x25_type_trans(skb, dev);
 return netif_rx(skb);
}
