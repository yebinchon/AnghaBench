
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_MSM_REG_RD_STROBE_ADR ;
 int HW_ATL_MSM_REG_RD_STROBE_MSK ;
 int HW_ATL_MSM_REG_RD_STROBE_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_msm_reg_rd_strobe_set(struct aq_hw_s *aq_hw, u32 reg_rd_strobe)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_MSM_REG_RD_STROBE_ADR,
       HW_ATL_MSM_REG_RD_STROBE_MSK,
       HW_ATL_MSM_REG_RD_STROBE_SHIFT,
       reg_rd_strobe);
}
