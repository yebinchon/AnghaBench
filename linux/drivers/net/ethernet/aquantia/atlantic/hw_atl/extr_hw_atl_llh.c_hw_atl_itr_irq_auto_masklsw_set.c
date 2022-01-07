
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_ITR_IAMRLSW_ADR ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_itr_irq_auto_masklsw_set(struct aq_hw_s *aq_hw,
         u32 irq_auto_masklsw)
{
 aq_hw_write_reg(aq_hw, HW_ATL_ITR_IAMRLSW_ADR, irq_auto_masklsw);
}
