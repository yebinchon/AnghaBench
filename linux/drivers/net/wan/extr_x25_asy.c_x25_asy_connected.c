
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {int dev; } ;
struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;


 unsigned char X25_IFACE_CONNECT ;
 struct sk_buff* dev_alloc_skb (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int x25_type_trans (struct sk_buff*,int ) ;

__attribute__((used)) static void x25_asy_connected(struct net_device *dev, int reason)
{
 struct x25_asy *sl = netdev_priv(dev);
 struct sk_buff *skb;
 unsigned char *ptr;

 skb = dev_alloc_skb(1);
 if (skb == ((void*)0)) {
  netdev_err(dev, "out of memory\n");
  return;
 }

 ptr = skb_put(skb, 1);
 *ptr = X25_IFACE_CONNECT;

 skb->protocol = x25_type_trans(skb, sl->dev);
 netif_rx(skb);
}
