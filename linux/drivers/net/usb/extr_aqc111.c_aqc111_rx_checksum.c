
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int ip_summed; } ;


 int AQ_RX_PD_L3_ERR ;
 int AQ_RX_PD_L4_ERR ;
 int AQ_RX_PD_L4_TCP ;
 int AQ_RX_PD_L4_TYPE_MASK ;
 int AQ_RX_PD_L4_UDP ;
 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;

__attribute__((used)) static void aqc111_rx_checksum(struct sk_buff *skb, u64 pkt_desc)
{
 u32 pkt_type = 0;

 skb->ip_summed = CHECKSUM_NONE;

 if (pkt_desc & AQ_RX_PD_L4_ERR || pkt_desc & AQ_RX_PD_L3_ERR)
  return;

 pkt_type = pkt_desc & AQ_RX_PD_L4_TYPE_MASK;

 if (pkt_type == AQ_RX_PD_L4_TCP || pkt_type == AQ_RX_PD_L4_UDP)
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
