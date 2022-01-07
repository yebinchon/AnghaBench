
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int padbytes ;
typedef int gfp_t ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,int ,int) ;
 int put_unaligned_le32 (int,void*) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_header_cloned (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 void* skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 void* skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int usbnet_set_skb_tx_stats (struct sk_buff*,int,int ) ;

struct sk_buff *asix_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
         gfp_t flags)
{
 int padlen;
 int headroom = skb_headroom(skb);
 int tailroom = skb_tailroom(skb);
 u32 packet_len;
 u32 padbytes = 0xffff0000;
 void *ptr;

 padlen = ((skb->len + 4) & (dev->maxpacket - 1)) ? 0 : 4;
 if (!skb_header_cloned(skb) &&
     !(padlen && skb_cloned(skb)) &&
     headroom + tailroom >= 4 + padlen) {

  if (headroom < 4 ||
      tailroom < padlen) {
   skb->data = memmove(skb->head + 4, skb->data, skb->len);
   skb_set_tail_pointer(skb, skb->len);
  }
 } else {
  struct sk_buff *skb2;

  skb2 = skb_copy_expand(skb, 4, padlen, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }

 packet_len = ((skb->len ^ 0x0000ffff) << 16) + skb->len;
 ptr = skb_push(skb, 4);
 put_unaligned_le32(packet_len, ptr);

 if (padlen) {
  put_unaligned_le32(padbytes, skb_tail_pointer(skb));
  skb_put(skb, sizeof(padbytes));
 }

 usbnet_set_skb_tx_stats(skb, 1, 0);
 return skb;
}
