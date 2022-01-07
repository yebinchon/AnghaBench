
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int* data; } ;
typedef int gfp_t ;


 int DM_TX_OVERHEAD ;
 int __skb_push (struct sk_buff*,int) ;
 int __skb_put (struct sk_buff*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (int*,int ,int) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dm9601_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 int len, pad;







 len = skb->len + DM_TX_OVERHEAD;






 while ((len & 1) || !(len % dev->maxpacket))
  len++;

 len -= DM_TX_OVERHEAD;
 pad = len - skb->len;

 if (skb_headroom(skb) < DM_TX_OVERHEAD || skb_tailroom(skb) < pad) {
  struct sk_buff *skb2;

  skb2 = skb_copy_expand(skb, DM_TX_OVERHEAD, pad, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }

 __skb_push(skb, DM_TX_OVERHEAD);

 if (pad) {
  memset(skb->data + skb->len, 0, pad);
  __skb_put(skb, pad);
 }

 skb->data[0] = len;
 skb->data[1] = len >> 8;

 return skb;
}
