
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ pa; int * va; } ;
struct ice_ctl_q_ring {TYPE_1__ desc_buf; } ;


 int dmam_free_coherent (int ,scalar_t__,int *,scalar_t__) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static void ice_free_cq_ring(struct ice_hw *hw, struct ice_ctl_q_ring *ring)
{
 dmam_free_coherent(ice_hw_to_dev(hw), ring->desc_buf.size,
      ring->desc_buf.va, ring->desc_buf.pa);
 ring->desc_buf.va = ((void*)0);
 ring->desc_buf.pa = 0;
 ring->desc_buf.size = 0;
}
