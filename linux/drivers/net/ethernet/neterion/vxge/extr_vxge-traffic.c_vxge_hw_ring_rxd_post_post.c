
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxge_hw_ring_rxd_1 {int control_0; } ;
struct __vxge_hw_ring {TYPE_2__* stats; } ;
struct TYPE_3__ {scalar_t__ usage_cnt; } ;
struct TYPE_4__ {TYPE_1__ common_stats; } ;


 int VXGE_HW_RING_RXD_LIST_OWN_ADAPTER ;

void vxge_hw_ring_rxd_post_post(struct __vxge_hw_ring *ring, void *rxdh)
{
 struct vxge_hw_ring_rxd_1 *rxdp = (struct vxge_hw_ring_rxd_1 *)rxdh;

 rxdp->control_0 = VXGE_HW_RING_RXD_LIST_OWN_ADAPTER;

 if (ring->stats->common_stats.usage_cnt > 0)
  ring->stats->common_stats.usage_cnt--;
}
