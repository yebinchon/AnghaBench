
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int csum; scalar_t__ ip_summed; } ;
struct TYPE_4__ {int flags; } ;
struct nfp_net_rx_desc {TYPE_2__ rxd; } ;
struct nfp_net_r_vector {int rx_sync; int hw_csum_rx_inner_ok; int hw_csum_rx_ok; int hw_csum_rx_error; int hw_csum_rx_complete; } ;
struct nfp_net_dp {TYPE_1__* netdev; } ;
struct nfp_meta_parsed {int csum; scalar_t__ csum_type; } ;
struct TYPE_3__ {int features; } ;


 int NETIF_F_RXCSUM ;
 int PCIE_DESC_RX_I_TCP_CSUM_OK ;
 int PCIE_DESC_RX_I_UDP_CSUM_OK ;
 int PCIE_DESC_RX_TCP_CSUM_OK ;
 int PCIE_DESC_RX_UDP_CSUM_OK ;
 int __skb_incr_checksum_unnecessary (struct sk_buff*) ;
 int le16_to_cpu (int) ;
 scalar_t__ nfp_net_rx_csum_has_errors (int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void nfp_net_rx_csum(struct nfp_net_dp *dp,
       struct nfp_net_r_vector *r_vec,
       struct nfp_net_rx_desc *rxd,
       struct nfp_meta_parsed *meta, struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);

 if (!(dp->netdev->features & NETIF_F_RXCSUM))
  return;

 if (meta->csum_type) {
  skb->ip_summed = meta->csum_type;
  skb->csum = meta->csum;
  u64_stats_update_begin(&r_vec->rx_sync);
  r_vec->hw_csum_rx_complete++;
  u64_stats_update_end(&r_vec->rx_sync);
  return;
 }

 if (nfp_net_rx_csum_has_errors(le16_to_cpu(rxd->rxd.flags))) {
  u64_stats_update_begin(&r_vec->rx_sync);
  r_vec->hw_csum_rx_error++;
  u64_stats_update_end(&r_vec->rx_sync);
  return;
 }





 if (rxd->rxd.flags & PCIE_DESC_RX_TCP_CSUM_OK ||
     rxd->rxd.flags & PCIE_DESC_RX_UDP_CSUM_OK) {
  __skb_incr_checksum_unnecessary(skb);
  u64_stats_update_begin(&r_vec->rx_sync);
  r_vec->hw_csum_rx_ok++;
  u64_stats_update_end(&r_vec->rx_sync);
 }

 if (rxd->rxd.flags & PCIE_DESC_RX_I_TCP_CSUM_OK ||
     rxd->rxd.flags & PCIE_DESC_RX_I_UDP_CSUM_OK) {
  __skb_incr_checksum_unnecessary(skb);
  u64_stats_update_begin(&r_vec->rx_sync);
  r_vec->hw_csum_rx_inner_ok++;
  u64_stats_update_end(&r_vec->rx_sync);
 }
}
