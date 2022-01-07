
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_rx_ring {scalar_t__ wr_p; scalar_t__ rd_p; int cnt; int size; int rxds; TYPE_1__* rxbufs; } ;
struct TYPE_2__ {int * frag; scalar_t__ dma_addr; } ;


 unsigned int D_IDX (struct nfp_net_rx_ring*,scalar_t__) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void nfp_net_rx_ring_reset(struct nfp_net_rx_ring *rx_ring)
{
 unsigned int wr_idx, last_idx;




 if (rx_ring->wr_p == 0 && rx_ring->rd_p == 0)
  return;


 wr_idx = D_IDX(rx_ring, rx_ring->wr_p);
 last_idx = rx_ring->cnt - 1;
 rx_ring->rxbufs[wr_idx].dma_addr = rx_ring->rxbufs[last_idx].dma_addr;
 rx_ring->rxbufs[wr_idx].frag = rx_ring->rxbufs[last_idx].frag;
 rx_ring->rxbufs[last_idx].dma_addr = 0;
 rx_ring->rxbufs[last_idx].frag = ((void*)0);

 memset(rx_ring->rxds, 0, rx_ring->size);
 rx_ring->wr_p = 0;
 rx_ring->rd_p = 0;
}
