
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dpc; } ;


 int LODWORD (int ) ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int atomic_inc (int *) ;
 int hw_atl_itr_irq_msk_clearlsw_set (struct aq_hw_s*,int ) ;
 int hw_atl_itr_irq_status_clearlsw_set (struct aq_hw_s*,int ) ;
 unsigned int hw_atl_reg_gen_irq_status_get (struct aq_hw_s*) ;

__attribute__((used)) static int hw_atl_a0_hw_irq_disable(struct aq_hw_s *self, u64 mask)
{
 hw_atl_itr_irq_msk_clearlsw_set(self, LODWORD(mask));
 hw_atl_itr_irq_status_clearlsw_set(self, LODWORD(mask));

 if ((1U << 16) & hw_atl_reg_gen_irq_status_get(self))
  atomic_inc(&self->dpc);

 return aq_hw_err_from_flags(self);
}
