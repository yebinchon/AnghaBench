
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int idx; } ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_tdm_tx_desc_en_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_ring_tx_stop(struct aq_hw_s *self,
         struct aq_ring_s *ring)
{
 hw_atl_tdm_tx_desc_en_set(self, 0U, ring->idx);
 return aq_hw_err_from_flags(self);
}
