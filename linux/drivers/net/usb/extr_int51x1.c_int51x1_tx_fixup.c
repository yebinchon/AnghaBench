
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int gfp_t ;
typedef int __le16 ;


 int INT51X1_HEADER_SIZE ;
 int * __skb_push (struct sk_buff*,int) ;
 int __skb_put_zero (struct sk_buff*,int) ;
 int cpu_to_le16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,int ,int) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *int51x1_tx_fixup(struct usbnet *dev,
  struct sk_buff *skb, gfp_t flags)
{
 int pack_len = skb->len;
 int pack_with_header_len = pack_len + INT51X1_HEADER_SIZE;
 int headroom = skb_headroom(skb);
 int tailroom = skb_tailroom(skb);
 int need_tail = 0;
 __le16 *len;


 if ((pack_with_header_len) < dev->maxpacket)
  need_tail = dev->maxpacket - pack_with_header_len + 1;





 else if (!(pack_with_header_len % dev->maxpacket))
  need_tail = 1;

 if (!skb_cloned(skb) &&
   (headroom + tailroom >= need_tail + INT51X1_HEADER_SIZE)) {
  if (headroom < INT51X1_HEADER_SIZE || tailroom < need_tail) {
   skb->data = memmove(skb->head + INT51X1_HEADER_SIZE,
     skb->data, skb->len);
   skb_set_tail_pointer(skb, skb->len);
  }
 } else {
  struct sk_buff *skb2;

  skb2 = skb_copy_expand(skb,
    INT51X1_HEADER_SIZE,
    need_tail,
    flags);
  dev_kfree_skb_any(skb);
  if (!skb2)
   return ((void*)0);
  skb = skb2;
 }

 pack_len += need_tail;
 pack_len &= 0x07ff;

 len = __skb_push(skb, INT51X1_HEADER_SIZE);
 *len = cpu_to_le16(pack_len);

 if(need_tail)
  __skb_put_zero(skb, need_tail);

 return skb;
}
