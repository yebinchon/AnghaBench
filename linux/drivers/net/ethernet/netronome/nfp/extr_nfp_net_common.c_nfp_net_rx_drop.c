
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ head; } ;
struct nfp_net_rx_ring {int dummy; } ;
struct nfp_net_rx_buf {scalar_t__ frag; int dma_addr; } ;
struct nfp_net_r_vector {int rx_sync; int rx_replace_buf_alloc_fail; int rx_drops; } ;
struct nfp_net_dp {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int nfp_net_rx_give_one (struct nfp_net_dp const*,struct nfp_net_rx_ring*,scalar_t__,int ) ;
 int page_ref_inc (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int virt_to_head_page (scalar_t__) ;

__attribute__((used)) static void
nfp_net_rx_drop(const struct nfp_net_dp *dp, struct nfp_net_r_vector *r_vec,
  struct nfp_net_rx_ring *rx_ring, struct nfp_net_rx_buf *rxbuf,
  struct sk_buff *skb)
{
 u64_stats_update_begin(&r_vec->rx_sync);
 r_vec->rx_drops++;



 if (skb && rxbuf)
  r_vec->rx_replace_buf_alloc_fail++;
 u64_stats_update_end(&r_vec->rx_sync);




 if (skb && rxbuf && skb->head == rxbuf->frag)
  page_ref_inc(virt_to_head_page(rxbuf->frag));
 if (rxbuf)
  nfp_net_rx_give_one(dp, rx_ring, rxbuf->frag, rxbuf->dma_addr);
 if (skb)
  dev_kfree_skb_any(skb);
}
