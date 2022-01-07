
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dummy; } ;


 unsigned int HW_ATL_A0_ERR_INT ;
 unsigned int LODWORD (int ) ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_itr_irq_msk_setlsw_set (struct aq_hw_s*,unsigned int) ;

__attribute__((used)) static int hw_atl_a0_hw_irq_enable(struct aq_hw_s *self, u64 mask)
{
 hw_atl_itr_irq_msk_setlsw_set(self, LODWORD(mask) |
          (1U << HW_ATL_A0_ERR_INT));
 return aq_hw_err_from_flags(self);
}
