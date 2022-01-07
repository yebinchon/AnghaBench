
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int data; int encapsulation; } ;
struct nfp_net_tx_desc {int l3_offset; int l4_offset; int lso_hdrlen; int flags; int mss; } ;
struct nfp_net_tx_buf {int pkt_cnt; int real_len; } ;
struct nfp_net_r_vector {int tx_sync; int tx_lso; } ;
struct TYPE_2__ {int gso_segs; int gso_size; } ;


 int PCIE_DESC_TX_LSO ;
 int PCIE_DESC_TX_MSS_MASK ;
 int cpu_to_le16 (int) ;
 int inner_tcp_hdrlen (struct sk_buff*) ;
 int skb_inner_network_offset (struct sk_buff*) ;
 int skb_inner_transport_header (struct sk_buff*) ;
 int skb_inner_transport_offset (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void nfp_net_tx_tso(struct nfp_net_r_vector *r_vec,
      struct nfp_net_tx_buf *txbuf,
      struct nfp_net_tx_desc *txd, struct sk_buff *skb,
      u32 md_bytes)
{
 u32 l3_offset, l4_offset, hdrlen;
 u16 mss;

 if (!skb_is_gso(skb))
  return;

 if (!skb->encapsulation) {
  l3_offset = skb_network_offset(skb);
  l4_offset = skb_transport_offset(skb);
  hdrlen = skb_transport_offset(skb) + tcp_hdrlen(skb);
 } else {
  l3_offset = skb_inner_network_offset(skb);
  l4_offset = skb_inner_transport_offset(skb);
  hdrlen = skb_inner_transport_header(skb) - skb->data +
   inner_tcp_hdrlen(skb);
 }

 txbuf->pkt_cnt = skb_shinfo(skb)->gso_segs;
 txbuf->real_len += hdrlen * (txbuf->pkt_cnt - 1);

 mss = skb_shinfo(skb)->gso_size & PCIE_DESC_TX_MSS_MASK;
 txd->l3_offset = l3_offset - md_bytes;
 txd->l4_offset = l4_offset - md_bytes;
 txd->lso_hdrlen = hdrlen - md_bytes;
 txd->mss = cpu_to_le16(mss);
 txd->flags |= PCIE_DESC_TX_LSO;

 u64_stats_update_begin(&r_vec->tx_sync);
 r_vec->tx_lso++;
 u64_stats_update_end(&r_vec->tx_sync);
}
