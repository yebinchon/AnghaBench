
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_rx_ring {int cnt; TYPE_1__* rxbufs; } ;
struct nfp_net_dp {int dummy; } ;
struct TYPE_2__ {int dma_addr; int frag; } ;


 int nfp_net_rx_give_one (struct nfp_net_dp*,struct nfp_net_rx_ring*,int ,int ) ;

__attribute__((used)) static void
nfp_net_rx_ring_fill_freelist(struct nfp_net_dp *dp,
         struct nfp_net_rx_ring *rx_ring)
{
 unsigned int i;

 for (i = 0; i < rx_ring->cnt - 1; i++)
  nfp_net_rx_give_one(dp, rx_ring, rx_ring->rxbufs[i].frag,
        rx_ring->rxbufs[i].dma_addr);
}
