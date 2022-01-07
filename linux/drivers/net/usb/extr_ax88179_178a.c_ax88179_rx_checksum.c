
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int ip_summed; } ;


 int AX_RXHDR_L3CSUM_ERR ;
 int AX_RXHDR_L4CSUM_ERR ;
 int AX_RXHDR_L4_TYPE_MASK ;
 int AX_RXHDR_L4_TYPE_TCP ;
 int AX_RXHDR_L4_TYPE_UDP ;
 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;

__attribute__((used)) static void
ax88179_rx_checksum(struct sk_buff *skb, u32 *pkt_hdr)
{
 skb->ip_summed = CHECKSUM_NONE;


 if ((*pkt_hdr & AX_RXHDR_L3CSUM_ERR) ||
     (*pkt_hdr & AX_RXHDR_L4CSUM_ERR))
  return;


 if (((*pkt_hdr & AX_RXHDR_L4_TYPE_MASK) == AX_RXHDR_L4_TYPE_TCP) ||
     ((*pkt_hdr & AX_RXHDR_L4_TYPE_MASK) == AX_RXHDR_L4_TYPE_UDP))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
