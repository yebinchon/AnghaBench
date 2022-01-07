
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int gfp_t ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,int ,int) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
genelink_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 int padlen;
 int length = skb->len;
 int headroom = skb_headroom(skb);
 int tailroom = skb_tailroom(skb);
 __le32 *packet_count;
 __le32 *packet_len;


 padlen = ((skb->len + (4 + 4*1)) % 64) ? 0 : 1;

 if ((!skb_cloned(skb))
   && ((headroom + tailroom) >= (padlen + (4 + 4*1)))) {
  if ((headroom < (4 + 4*1)) || (tailroom < padlen)) {
   skb->data = memmove(skb->head + (4 + 4*1),
          skb->data, skb->len);
   skb_set_tail_pointer(skb, skb->len);
  }
 } else {
  struct sk_buff *skb2;
  skb2 = skb_copy_expand(skb, (4 + 4*1) , padlen, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }


 packet_count = skb_push(skb, (4 + 4 * 1));
 packet_len = packet_count + 1;

 *packet_count = cpu_to_le32(1);
 *packet_len = cpu_to_le32(length);


 if ((skb->len % dev->maxpacket) == 0)
  skb_put(skb, 1);

 return skb;
}
