
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sk_buff {int len; int* data; } ;
typedef int gfp_t ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *cx82310_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 int len = skb->len;

 if (skb_cow_head(skb, 2)) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }
 skb_push(skb, 2);

 skb->data[0] = len;
 skb->data[1] = len >> 8;

 return skb;
}
