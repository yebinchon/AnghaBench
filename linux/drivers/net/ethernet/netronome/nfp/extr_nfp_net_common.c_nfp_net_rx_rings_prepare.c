
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {unsigned int num_rx_rings; int * rx_rings; } ;
struct nfp_net {int * r_vecs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 scalar_t__ nfp_net_rx_ring_alloc (struct nfp_net_dp*,int *) ;
 scalar_t__ nfp_net_rx_ring_bufs_alloc (struct nfp_net_dp*,int *) ;
 int nfp_net_rx_ring_bufs_free (struct nfp_net_dp*,int *) ;
 int nfp_net_rx_ring_free (int *) ;
 int nfp_net_rx_ring_init (int *,int *,unsigned int) ;

__attribute__((used)) static int nfp_net_rx_rings_prepare(struct nfp_net *nn, struct nfp_net_dp *dp)
{
 unsigned int r;

 dp->rx_rings = kcalloc(dp->num_rx_rings, sizeof(*dp->rx_rings),
          GFP_KERNEL);
 if (!dp->rx_rings)
  return -ENOMEM;

 for (r = 0; r < dp->num_rx_rings; r++) {
  nfp_net_rx_ring_init(&dp->rx_rings[r], &nn->r_vecs[r], r);

  if (nfp_net_rx_ring_alloc(dp, &dp->rx_rings[r]))
   goto err_free_prev;

  if (nfp_net_rx_ring_bufs_alloc(dp, &dp->rx_rings[r]))
   goto err_free_ring;
 }

 return 0;

err_free_prev:
 while (r--) {
  nfp_net_rx_ring_bufs_free(dp, &dp->rx_rings[r]);
err_free_ring:
  nfp_net_rx_ring_free(&dp->rx_rings[r]);
 }
 kfree(dp->rx_rings);
 return -ENOMEM;
}
