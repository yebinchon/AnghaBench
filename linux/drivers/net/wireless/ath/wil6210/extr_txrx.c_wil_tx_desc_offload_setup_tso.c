
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b11; int d0; int ip_length; } ;
struct vring_tx_desc {TYPE_1__ dma; } ;
struct sk_buff {int dummy; } ;


 int BIT (int ) ;
 int DMA_CFG_DESC_TX_0_IPV4_CHECKSUM_EN_POS ;
 int DMA_CFG_DESC_TX_0_L4_LENGTH_MSK ;
 int DMA_CFG_DESC_TX_0_L4_TYPE_POS ;
 int DMA_CFG_DESC_TX_0_PSEUDO_HEADER_CALC_EN_POS ;
 int DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS ;
 int DMA_CFG_DESC_TX_0_TCP_SEG_EN_POS ;
 int DMA_CFG_DESC_TX_0_TCP_UDP_CHECKSUM_EN_POS ;
 int DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS ;
 int ETH_HLEN ;

__attribute__((used)) static void wil_tx_desc_offload_setup_tso(struct vring_tx_desc *d,
       struct sk_buff *skb,
       int tso_desc_type, bool is_ipv4,
       int tcp_hdr_len, int skb_net_hdr_len)
{
 d->dma.b11 = ETH_HLEN;
 d->dma.b11 |= is_ipv4 << DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS;

 d->dma.d0 |= (2 << DMA_CFG_DESC_TX_0_L4_TYPE_POS);

 d->dma.d0 |= (tcp_hdr_len & DMA_CFG_DESC_TX_0_L4_LENGTH_MSK);


 d->dma.d0 |= (BIT(DMA_CFG_DESC_TX_0_TCP_SEG_EN_POS)) |
  (tso_desc_type << DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS);
 d->dma.d0 |= (is_ipv4 << DMA_CFG_DESC_TX_0_IPV4_CHECKSUM_EN_POS);

 d->dma.ip_length = skb_net_hdr_len;

 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_TCP_UDP_CHECKSUM_EN_POS);

 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_PSEUDO_HEADER_CALC_EN_POS);
}
