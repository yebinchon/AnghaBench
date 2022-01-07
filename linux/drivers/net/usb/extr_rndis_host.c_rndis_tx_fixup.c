
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sk_buff {unsigned int len; int data; scalar_t__ head; } ;
struct rndis_data_hdr {void* data_len; void* data_offset; void* msg_len; void* msg_type; } ;
typedef int gfp_t ;


 unsigned int RNDIS_MSG_PACKET ;
 struct rndis_data_hdr* __skb_push (struct sk_buff*,int) ;
 void* cpu_to_le32 (unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int memmove (scalar_t__,int ,unsigned int) ;
 int memset (struct rndis_data_hdr*,int ,int) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_set_tail_pointer (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *
rndis_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 struct rndis_data_hdr *hdr;
 struct sk_buff *skb2;
 unsigned len = skb->len;

 if (likely(!skb_cloned(skb))) {
  int room = skb_headroom(skb);


  if (unlikely((sizeof *hdr) <= room))
   goto fill;


  room += skb_tailroom(skb);
  if (likely((sizeof *hdr) <= room)) {
   skb->data = memmove(skb->head + sizeof *hdr,
         skb->data, len);
   skb_set_tail_pointer(skb, len);
   goto fill;
  }
 }


 skb2 = skb_copy_expand(skb, sizeof *hdr, 1, flags);
 dev_kfree_skb_any(skb);
 if (unlikely(!skb2))
  return skb2;
 skb = skb2;




fill:
 hdr = __skb_push(skb, sizeof *hdr);
 memset(hdr, 0, sizeof *hdr);
 hdr->msg_type = cpu_to_le32(RNDIS_MSG_PACKET);
 hdr->msg_len = cpu_to_le32(skb->len);
 hdr->data_offset = cpu_to_le32(sizeof(*hdr) - 8);
 hdr->data_len = cpu_to_le32(len);


 return skb;
}
