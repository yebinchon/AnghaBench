
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int gfp_t ;


 int BIT (int) ;
 int EEM_HEAD ;
 int ETH_FCS_LEN ;
 int crc32_le (int ,int ,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,int ,int) ;
 int put_unaligned_le16 (int,int ) ;
 int put_unaligned_le32 (int ,int ) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *eem_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 struct sk_buff *skb2 = ((void*)0);
 u16 len = skb->len;
 u32 crc = 0;
 int padlen = 0;







 if (!((len + EEM_HEAD + ETH_FCS_LEN) % dev->maxpacket))
  padlen += 2;

 if (!skb_cloned(skb)) {
  int headroom = skb_headroom(skb);
  int tailroom = skb_tailroom(skb);

  if ((tailroom >= ETH_FCS_LEN + padlen) &&
      (headroom >= EEM_HEAD))
   goto done;

  if ((headroom + tailroom)
    > (EEM_HEAD + ETH_FCS_LEN + padlen)) {
   skb->data = memmove(skb->head +
     EEM_HEAD,
     skb->data,
     skb->len);
   skb_set_tail_pointer(skb, len);
   goto done;
  }
 }

 skb2 = skb_copy_expand(skb, EEM_HEAD, ETH_FCS_LEN + padlen, flags);
 if (!skb2)
  return ((void*)0);

 dev_kfree_skb_any(skb);
 skb = skb2;

done:

 crc = crc32_le(~0, skb->data, skb->len);
 crc = ~crc;

 put_unaligned_le32(crc, skb_put(skb, 4));






 len = skb->len;
 put_unaligned_le16(BIT(14) | len, skb_push(skb, 2));


 if (padlen)
  put_unaligned_le16(0, skb_put(skb, 2));

 return skb;
}
