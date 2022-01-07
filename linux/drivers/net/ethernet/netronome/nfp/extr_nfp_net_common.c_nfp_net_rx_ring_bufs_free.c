
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_rx_ring {int cnt; TYPE_1__* rxbufs; } ;
struct nfp_net_dp {int xdp_prog; } ;
struct TYPE_2__ {int * frag; scalar_t__ dma_addr; } ;


 int nfp_net_dma_unmap_rx (struct nfp_net_dp*,scalar_t__) ;
 int nfp_net_free_frag (int *,int ) ;

__attribute__((used)) static void
nfp_net_rx_ring_bufs_free(struct nfp_net_dp *dp,
     struct nfp_net_rx_ring *rx_ring)
{
 unsigned int i;

 for (i = 0; i < rx_ring->cnt - 1; i++) {




  if (!rx_ring->rxbufs[i].frag)
   continue;

  nfp_net_dma_unmap_rx(dp, rx_ring->rxbufs[i].dma_addr);
  nfp_net_free_frag(rx_ring->rxbufs[i].frag, dp->xdp_prog);
  rx_ring->rxbufs[i].dma_addr = 0;
  rx_ring->rxbufs[i].frag = ((void*)0);
 }
}
