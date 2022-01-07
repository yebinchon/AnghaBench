
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_ring {int dummy; } ;


 int vxge_hw_ring_rxd_post_post (struct __vxge_hw_ring*,void*) ;
 int wmb () ;

void vxge_hw_ring_rxd_post_post_wmb(struct __vxge_hw_ring *ring, void *rxdh)
{
 wmb();
 vxge_hw_ring_rxd_post_post(ring, rxdh);
}
