
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_rx_ring {int size; int dma; int * rxds; int * rxbufs; scalar_t__ cnt; int xdp_rxq; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {TYPE_1__* nfp_net; } ;
struct nfp_net_dp {int dev; scalar_t__ netdev; } ;
struct TYPE_2__ {struct nfp_net_dp dp; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int kvfree (int *) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void nfp_net_rx_ring_free(struct nfp_net_rx_ring *rx_ring)
{
 struct nfp_net_r_vector *r_vec = rx_ring->r_vec;
 struct nfp_net_dp *dp = &r_vec->nfp_net->dp;

 if (dp->netdev)
  xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 kvfree(rx_ring->rxbufs);

 if (rx_ring->rxds)
  dma_free_coherent(dp->dev, rx_ring->size,
      rx_ring->rxds, rx_ring->dma);

 rx_ring->cnt = 0;
 rx_ring->rxbufs = ((void*)0);
 rx_ring->rxds = ((void*)0);
 rx_ring->dma = 0;
 rx_ring->size = 0;
}
