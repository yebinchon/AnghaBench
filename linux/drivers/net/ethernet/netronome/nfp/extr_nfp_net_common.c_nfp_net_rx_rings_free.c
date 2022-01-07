
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {unsigned int num_rx_rings; int * rx_rings; } ;


 int kfree (int *) ;
 int nfp_net_rx_ring_bufs_free (struct nfp_net_dp*,int *) ;
 int nfp_net_rx_ring_free (int *) ;

__attribute__((used)) static void nfp_net_rx_rings_free(struct nfp_net_dp *dp)
{
 unsigned int r;

 for (r = 0; r < dp->num_rx_rings; r++) {
  nfp_net_rx_ring_bufs_free(dp, &dp->rx_rings[r]);
  nfp_net_rx_ring_free(&dp->rx_rings[r]);
 }

 kfree(dp->rx_rings);
}
