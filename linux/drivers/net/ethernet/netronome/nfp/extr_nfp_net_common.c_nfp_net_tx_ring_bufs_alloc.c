
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {unsigned int cnt; int is_xdp; struct nfp_net_tx_buf* txbufs; } ;
struct nfp_net_tx_buf {int frag; int dma_addr; } ;
struct nfp_net_dp {int dummy; } ;


 int ENOMEM ;
 int nfp_net_rx_alloc_one (struct nfp_net_dp*,int *) ;
 int nfp_net_tx_ring_bufs_free (struct nfp_net_dp*,struct nfp_net_tx_ring*) ;

__attribute__((used)) static int
nfp_net_tx_ring_bufs_alloc(struct nfp_net_dp *dp,
      struct nfp_net_tx_ring *tx_ring)
{
 struct nfp_net_tx_buf *txbufs = tx_ring->txbufs;
 unsigned int i;

 if (!tx_ring->is_xdp)
  return 0;

 for (i = 0; i < tx_ring->cnt; i++) {
  txbufs[i].frag = nfp_net_rx_alloc_one(dp, &txbufs[i].dma_addr);
  if (!txbufs[i].frag) {
   nfp_net_tx_ring_bufs_free(dp, tx_ring);
   return -ENOMEM;
  }
 }

 return 0;
}
