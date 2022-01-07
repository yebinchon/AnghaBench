
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; } ;
typedef int gfp_t ;
struct TYPE_2__ {int gso_size; } ;


 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 int put_unaligned_le32 (int,void*) ;
 scalar_t__ skb_header_cloned (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 void* skb_push (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
ax88179_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 u32 tx_hdr1, tx_hdr2;
 int frame_size = dev->maxpacket;
 int mss = skb_shinfo(skb)->gso_size;
 int headroom;
 void *ptr;

 tx_hdr1 = skb->len;
 tx_hdr2 = mss;
 if (((skb->len + 8) % frame_size) == 0)
  tx_hdr2 |= 0x80008000;

 headroom = skb_headroom(skb) - 8;

 if ((skb_header_cloned(skb) || headroom < 0) &&
     pskb_expand_head(skb, headroom < 0 ? 8 : 0, 0, GFP_ATOMIC)) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }

 ptr = skb_push(skb, 8);
 put_unaligned_le32(tx_hdr1, ptr);
 put_unaligned_le32(tx_hdr2, ptr + 4);

 return skb;
}
