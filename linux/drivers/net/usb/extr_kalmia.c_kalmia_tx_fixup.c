
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int net; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int gfp_t ;


 int KALMIA_ALIGN_SIZE ;
 int KALMIA_HEADER_LENGTH ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,int ,int) ;
 int netdev_dbg (int ,char*,int,int,...) ;
 int put_unaligned_le16 (int,unsigned char*) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 int skb_put_zero (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
kalmia_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 struct sk_buff *skb2 = ((void*)0);
 u16 content_len;
 unsigned char *header_start;
 unsigned char ether_type_1, ether_type_2;
 u8 remainder, padlen = 0;

 if (!skb_cloned(skb)) {
  int headroom = skb_headroom(skb);
  int tailroom = skb_tailroom(skb);

  if ((tailroom >= KALMIA_ALIGN_SIZE) && (headroom
   >= KALMIA_HEADER_LENGTH))
   goto done;

  if ((headroom + tailroom) > (KALMIA_HEADER_LENGTH
   + KALMIA_ALIGN_SIZE)) {
   skb->data = memmove(skb->head + KALMIA_HEADER_LENGTH,
    skb->data, skb->len);
   skb_set_tail_pointer(skb, skb->len);
   goto done;
  }
 }

 skb2 = skb_copy_expand(skb, KALMIA_HEADER_LENGTH,
  KALMIA_ALIGN_SIZE, flags);
 if (!skb2)
  return ((void*)0);

 dev_kfree_skb_any(skb);
 skb = skb2;

done:
 header_start = skb_push(skb, KALMIA_HEADER_LENGTH);
 ether_type_1 = header_start[KALMIA_HEADER_LENGTH + 12];
 ether_type_2 = header_start[KALMIA_HEADER_LENGTH + 13];

 netdev_dbg(dev->net, "Sending etherType: %02x%02x", ether_type_1,
  ether_type_2);


 header_start[0] = 0x57;
 header_start[1] = 0x44;
 content_len = skb->len - KALMIA_HEADER_LENGTH;

 put_unaligned_le16(content_len, &header_start[2]);
 header_start[4] = ether_type_1;
 header_start[5] = ether_type_2;


 remainder = skb->len % KALMIA_ALIGN_SIZE;
 if (remainder > 0) {
  padlen = KALMIA_ALIGN_SIZE - remainder;
  skb_put_zero(skb, padlen);
 }

 netdev_dbg(dev->net,
  "Sending package with length %i and padding %i. Header: %6phC.",
  content_len, padlen, header_start);

 return skb;
}
