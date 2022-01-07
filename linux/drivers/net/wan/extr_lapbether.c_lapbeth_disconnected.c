
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;


 unsigned char X25_IFACE_DISCONNECT ;
 struct sk_buff* dev_alloc_skb (int) ;
 int netif_rx (struct sk_buff*) ;
 int pr_err (char*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int x25_type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void lapbeth_disconnected(struct net_device *dev, int reason)
{
 unsigned char *ptr;
 struct sk_buff *skb = dev_alloc_skb(1);

 if (!skb) {
  pr_err("out of memory\n");
  return;
 }

 ptr = skb_put(skb, 1);
 *ptr = X25_IFACE_DISCONNECT;

 skb->protocol = x25_type_trans(skb, dev);
 netif_rx(skb);
}
