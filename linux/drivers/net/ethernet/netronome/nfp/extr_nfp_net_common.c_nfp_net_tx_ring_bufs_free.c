
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_tx_ring {unsigned int cnt; TYPE_1__* txbufs; int is_xdp; } ;
struct nfp_net_dp {int dummy; } ;
struct TYPE_2__ {int frag; int dma_addr; } ;


 int __free_page (int ) ;
 int nfp_net_dma_unmap_rx (struct nfp_net_dp*,int ) ;
 int virt_to_page (int ) ;

__attribute__((used)) static void
nfp_net_tx_ring_bufs_free(struct nfp_net_dp *dp,
     struct nfp_net_tx_ring *tx_ring)
{
 unsigned int i;

 if (!tx_ring->is_xdp)
  return;

 for (i = 0; i < tx_ring->cnt; i++) {
  if (!tx_ring->txbufs[i].frag)
   return;

  nfp_net_dma_unmap_rx(dp, tx_ring->txbufs[i].dma_addr);
  __free_page(virt_to_page(tx_ring->txbufs[i].frag));
 }
}
