
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {unsigned int num_tx_rings; unsigned int num_stack_tx_rings; int * tx_rings; } ;
struct nfp_net {int * r_vecs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 scalar_t__ nfp_net_tx_ring_alloc (struct nfp_net_dp*,int *) ;
 scalar_t__ nfp_net_tx_ring_bufs_alloc (struct nfp_net_dp*,int *) ;
 int nfp_net_tx_ring_bufs_free (struct nfp_net_dp*,int *) ;
 int nfp_net_tx_ring_free (int *) ;
 int nfp_net_tx_ring_init (int *,int *,unsigned int,int) ;

__attribute__((used)) static int nfp_net_tx_rings_prepare(struct nfp_net *nn, struct nfp_net_dp *dp)
{
 unsigned int r;

 dp->tx_rings = kcalloc(dp->num_tx_rings, sizeof(*dp->tx_rings),
          GFP_KERNEL);
 if (!dp->tx_rings)
  return -ENOMEM;

 for (r = 0; r < dp->num_tx_rings; r++) {
  int bias = 0;

  if (r >= dp->num_stack_tx_rings)
   bias = dp->num_stack_tx_rings;

  nfp_net_tx_ring_init(&dp->tx_rings[r], &nn->r_vecs[r - bias],
         r, bias);

  if (nfp_net_tx_ring_alloc(dp, &dp->tx_rings[r]))
   goto err_free_prev;

  if (nfp_net_tx_ring_bufs_alloc(dp, &dp->tx_rings[r]))
   goto err_free_ring;
 }

 return 0;

err_free_prev:
 while (r--) {
  nfp_net_tx_ring_bufs_free(dp, &dp->tx_rings[r]);
err_free_ring:
  nfp_net_tx_ring_free(&dp->tx_rings[r]);
 }
 kfree(dp->tx_rings);
 return -ENOMEM;
}
