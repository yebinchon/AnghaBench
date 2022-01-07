
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_r_vector {int * xdp_ring; int * tx_ring; int * rx_ring; } ;
struct nfp_net_dp {int num_rx_rings; int num_stack_tx_rings; int num_tx_rings; int * tx_rings; int * rx_rings; } ;



__attribute__((used)) static void
nfp_net_vector_assign_rings(struct nfp_net_dp *dp,
       struct nfp_net_r_vector *r_vec, int idx)
{
 r_vec->rx_ring = idx < dp->num_rx_rings ? &dp->rx_rings[idx] : ((void*)0);
 r_vec->tx_ring =
  idx < dp->num_stack_tx_rings ? &dp->tx_rings[idx] : ((void*)0);

 r_vec->xdp_ring = idx < dp->num_tx_rings - dp->num_stack_tx_rings ?
  &dp->tx_rings[dp->num_stack_tx_rings + idx] : ((void*)0);
}
