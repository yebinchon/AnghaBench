
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int* data; } ;
typedef int gfp_t ;


 int SR_TX_OVERHEAD ;
 int __skb_push (struct sk_buff*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *sr9700_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 int len;
 len = skb->len;

 if (skb_cow_head(skb, SR_TX_OVERHEAD)) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }

 __skb_push(skb, SR_TX_OVERHEAD);




 if ((skb->len % dev->maxpacket) == 0)
  len++;

 skb->data[0] = len;
 skb->data[1] = len >> 8;

 return skb;
}
