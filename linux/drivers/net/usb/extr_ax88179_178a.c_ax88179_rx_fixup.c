
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {scalar_t__ len; int data; int truesize; } ;
struct TYPE_2__ {scalar_t__ hard_header_len; } ;


 int AX_RXHDR_CRC_ERR ;
 int AX_RXHDR_DROP_ERR ;
 int GFP_ATOMIC ;
 int ax88179_rx_checksum (struct sk_buff*,int*) ;
 int get_unaligned_le32 (int ) ;
 int le32_to_cpus (int*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int ax88179_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct sk_buff *ax_skb;
 int pkt_cnt;
 u32 rx_hdr;
 u16 hdr_off;
 u32 *pkt_hdr;


 if (skb->len < dev->net->hard_header_len)
  return 0;

 skb_trim(skb, skb->len - 4);
 rx_hdr = get_unaligned_le32(skb_tail_pointer(skb));

 pkt_cnt = (u16)rx_hdr;
 hdr_off = (u16)(rx_hdr >> 16);
 pkt_hdr = (u32 *)(skb->data + hdr_off);

 while (pkt_cnt--) {
  u16 pkt_len;

  le32_to_cpus(pkt_hdr);
  pkt_len = (*pkt_hdr >> 16) & 0x1fff;


  if ((*pkt_hdr & AX_RXHDR_CRC_ERR) ||
      (*pkt_hdr & AX_RXHDR_DROP_ERR)) {
   skb_pull(skb, (pkt_len + 7) & 0xFFF8);
   pkt_hdr++;
   continue;
  }

  if (pkt_cnt == 0) {

   skb_pull(skb, 2);
   skb->len = pkt_len;
   skb_set_tail_pointer(skb, pkt_len);
   skb->truesize = pkt_len + sizeof(struct sk_buff);
   ax88179_rx_checksum(skb, pkt_hdr);
   return 1;
  }

  ax_skb = skb_clone(skb, GFP_ATOMIC);
  if (ax_skb) {
   ax_skb->len = pkt_len;
   ax_skb->data = skb->data + 2;
   skb_set_tail_pointer(ax_skb, pkt_len);
   ax_skb->truesize = pkt_len + sizeof(struct sk_buff);
   ax88179_rx_checksum(ax_skb, pkt_hdr);
   usbnet_skb_return(dev, ax_skb);
  } else {
   return 0;
  }

  skb_pull(skb, (pkt_len + 7) & 0xFFF8);
  pkt_hdr++;
 }
 return 1;
}
