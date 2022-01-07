
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dummy; } ;


 int LODWORD (int ) ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_itr_irq_msk_setlsw_set (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_b0_hw_irq_enable(struct aq_hw_s *self, u64 mask)
{
 hw_atl_itr_irq_msk_setlsw_set(self, LODWORD(mask));
 return aq_hw_err_from_flags(self);
}
