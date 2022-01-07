
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_tx_ring {int size; int dma; int * txds; int * txbufs; scalar_t__ cnt; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {TYPE_1__* nfp_net; } ;
struct nfp_net_dp {int dev; } ;
struct TYPE_2__ {struct nfp_net_dp dp; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int kvfree (int *) ;

__attribute__((used)) static void nfp_net_tx_ring_free(struct nfp_net_tx_ring *tx_ring)
{
 struct nfp_net_r_vector *r_vec = tx_ring->r_vec;
 struct nfp_net_dp *dp = &r_vec->nfp_net->dp;

 kvfree(tx_ring->txbufs);

 if (tx_ring->txds)
  dma_free_coherent(dp->dev, tx_ring->size,
      tx_ring->txds, tx_ring->dma);

 tx_ring->cnt = 0;
 tx_ring->txbufs = ((void*)0);
 tx_ring->txds = ((void*)0);
 tx_ring->dma = 0;
 tx_ring->size = 0;
}
