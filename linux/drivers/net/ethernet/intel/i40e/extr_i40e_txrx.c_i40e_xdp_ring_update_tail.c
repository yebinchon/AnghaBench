
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int tail; int next_to_use; } ;


 int wmb () ;
 int writel_relaxed (int ,int ) ;

void i40e_xdp_ring_update_tail(struct i40e_ring *xdp_ring)
{



 wmb();
 writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
}
