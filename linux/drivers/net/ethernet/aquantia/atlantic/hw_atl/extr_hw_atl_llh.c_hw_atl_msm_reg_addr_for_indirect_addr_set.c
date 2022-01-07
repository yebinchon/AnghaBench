
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_MSM_REG_ADDR_ADR ;
 int HW_ATL_MSM_REG_ADDR_MSK ;
 int HW_ATL_MSM_REG_ADDR_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_msm_reg_addr_for_indirect_addr_set(struct aq_hw_s *aq_hw,
            u32 reg_addr_for_indirect_addr)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_MSM_REG_ADDR_ADR,
       HW_ATL_MSM_REG_ADDR_MSK,
       HW_ATL_MSM_REG_ADDR_SHIFT,
       reg_addr_for_indirect_addr);
}
