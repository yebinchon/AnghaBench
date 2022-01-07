
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;


 struct sk_buff* dev_alloc_skb (int) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int x25_type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void x25_connect_disconnect(struct net_device *dev, int reason, int code)
{
 struct sk_buff *skb;
 unsigned char *ptr;

 if ((skb = dev_alloc_skb(1)) == ((void*)0)) {
  netdev_err(dev, "out of memory\n");
  return;
 }

 ptr = skb_put(skb, 1);
 *ptr = code;

 skb->protocol = x25_type_trans(skb, dev);
 netif_rx(skb);
}
