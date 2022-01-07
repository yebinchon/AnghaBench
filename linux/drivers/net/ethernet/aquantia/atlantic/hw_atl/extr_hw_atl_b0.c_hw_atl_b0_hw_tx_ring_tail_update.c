
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int idx; int sw_tail; } ;
struct aq_hw_s {int dummy; } ;


 int hw_atl_reg_tx_dma_desc_tail_ptr_set (struct aq_hw_s*,int ,int ) ;

__attribute__((used)) static int hw_atl_b0_hw_tx_ring_tail_update(struct aq_hw_s *self,
         struct aq_ring_s *ring)
{
 hw_atl_reg_tx_dma_desc_tail_ptr_set(self, ring->sw_tail, ring->idx);
 return 0;
}
