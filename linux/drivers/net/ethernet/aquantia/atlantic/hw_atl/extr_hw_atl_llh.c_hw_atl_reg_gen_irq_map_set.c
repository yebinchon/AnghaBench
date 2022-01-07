
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_GEN_INTR_MAP_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_reg_gen_irq_map_set(struct aq_hw_s *aq_hw, u32 gen_intr_map,
    u32 regidx)
{
 aq_hw_write_reg(aq_hw, HW_ATL_GEN_INTR_MAP_ADR(regidx), gen_intr_map);
}
