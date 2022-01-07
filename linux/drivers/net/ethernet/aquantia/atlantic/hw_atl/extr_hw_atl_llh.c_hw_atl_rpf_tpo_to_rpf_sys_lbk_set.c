
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_TPO_RPF_SYS_LBK_ADR ;
 int HW_ATL_RPF_TPO_RPF_SYS_LBK_MSK ;
 int HW_ATL_RPF_TPO_RPF_SYS_LBK_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_tpo_to_rpf_sys_lbk_set(struct aq_hw_s *aq_hw,
           u32 tpo_to_rpf_sys_lbk)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_TPO_RPF_SYS_LBK_ADR,
       HW_ATL_RPF_TPO_RPF_SYS_LBK_MSK,
       HW_ATL_RPF_TPO_RPF_SYS_LBK_SHIFT,
       tpo_to_rpf_sys_lbk);
}
