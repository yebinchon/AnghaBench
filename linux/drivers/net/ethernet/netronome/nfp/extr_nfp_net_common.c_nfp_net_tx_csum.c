
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct nfp_net_tx_desc {int flags; } ;
struct nfp_net_tx_buf {scalar_t__ pkt_cnt; } ;
struct nfp_net_r_vector {int tx_sync; int hw_csum_tx; int hw_csum_tx_inner; } ;
struct nfp_net_dp {int ctrl; } ;
struct ipv6hdr {int version; int nexthdr; } ;
struct iphdr {int version; int protocol; } ;


 scalar_t__ CHECKSUM_PARTIAL ;


 int NFP_NET_CFG_CTRL_TXCSUM ;
 int PCIE_DESC_TX_CSUM ;
 int PCIE_DESC_TX_ENCAP ;
 int PCIE_DESC_TX_IP4_CSUM ;
 int PCIE_DESC_TX_TCP_CSUM ;
 int PCIE_DESC_TX_UDP_CSUM ;
 struct iphdr* inner_ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* inner_ipv6_hdr (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int nn_dp_warn (struct nfp_net_dp*,char*,int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void nfp_net_tx_csum(struct nfp_net_dp *dp,
       struct nfp_net_r_vector *r_vec,
       struct nfp_net_tx_buf *txbuf,
       struct nfp_net_tx_desc *txd, struct sk_buff *skb)
{
 struct ipv6hdr *ipv6h;
 struct iphdr *iph;
 u8 l4_hdr;

 if (!(dp->ctrl & NFP_NET_CFG_CTRL_TXCSUM))
  return;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return;

 txd->flags |= PCIE_DESC_TX_CSUM;
 if (skb->encapsulation)
  txd->flags |= PCIE_DESC_TX_ENCAP;

 iph = skb->encapsulation ? inner_ip_hdr(skb) : ip_hdr(skb);
 ipv6h = skb->encapsulation ? inner_ipv6_hdr(skb) : ipv6_hdr(skb);

 if (iph->version == 4) {
  txd->flags |= PCIE_DESC_TX_IP4_CSUM;
  l4_hdr = iph->protocol;
 } else if (ipv6h->version == 6) {
  l4_hdr = ipv6h->nexthdr;
 } else {
  nn_dp_warn(dp, "partial checksum but ipv=%x!\n", iph->version);
  return;
 }

 switch (l4_hdr) {
 case 129:
  txd->flags |= PCIE_DESC_TX_TCP_CSUM;
  break;
 case 128:
  txd->flags |= PCIE_DESC_TX_UDP_CSUM;
  break;
 default:
  nn_dp_warn(dp, "partial checksum but l4 proto=%x!\n", l4_hdr);
  return;
 }

 u64_stats_update_begin(&r_vec->tx_sync);
 if (skb->encapsulation)
  r_vec->hw_csum_tx_inner += txbuf->pkt_cnt;
 else
  r_vec->hw_csum_tx += txbuf->pkt_cnt;
 u64_stats_update_end(&r_vec->tx_sync);
}
