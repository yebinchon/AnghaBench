
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int tail; int next_to_use; } ;


 int wmb () ;
 int writel (int ,int ) ;

void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring)
{



 wmb();
 writel(ring->next_to_use, ring->tail);
}
