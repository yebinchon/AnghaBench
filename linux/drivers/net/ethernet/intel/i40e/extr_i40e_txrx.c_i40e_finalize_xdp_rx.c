
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_ring {size_t queue_index; TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_ring** xdp_rings; } ;


 unsigned int I40E_XDP_REDIR ;
 unsigned int I40E_XDP_TX ;
 int i40e_xdp_ring_update_tail (struct i40e_ring*) ;
 int xdp_do_flush_map () ;

void i40e_finalize_xdp_rx(struct i40e_ring *rx_ring, unsigned int xdp_res)
{
 if (xdp_res & I40E_XDP_REDIR)
  xdp_do_flush_map();

 if (xdp_res & I40E_XDP_TX) {
  struct i40e_ring *xdp_ring =
   rx_ring->vsi->xdp_rings[rx_ring->queue_index];

  i40e_xdp_ring_update_tail(xdp_ring);
 }
}
