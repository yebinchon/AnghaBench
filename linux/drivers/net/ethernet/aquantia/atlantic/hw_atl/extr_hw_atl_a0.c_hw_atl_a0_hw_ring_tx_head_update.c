
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {unsigned int hw_head; int idx; } ;
struct aq_hw_s {int flags; } ;


 int AQ_HW_FLAG_ERR_UNPLUG ;
 int ENXIO ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 scalar_t__ aq_utils_obj_test (int *,int ) ;
 unsigned int hw_atl_tdm_tx_desc_head_ptr_get (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_ring_tx_head_update(struct aq_hw_s *self,
         struct aq_ring_s *ring)
{
 int err = 0;
 unsigned int hw_head = hw_atl_tdm_tx_desc_head_ptr_get(self, ring->idx);

 if (aq_utils_obj_test(&self->flags, AQ_HW_FLAG_ERR_UNPLUG)) {
  err = -ENXIO;
  goto err_exit;
 }
 ring->hw_head = hw_head;
 err = aq_hw_err_from_flags(self);

err_exit:
 return err;
}
