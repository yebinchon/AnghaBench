
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_VL_EN_F_ADR (int ) ;
 int HW_ATL_RPF_VL_EN_F_MSK ;
 int HW_ATL_RPF_VL_EN_F_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_vlan_flr_en_set(struct aq_hw_s *aq_hw, u32 vlan_flr_en,
    u32 filter)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_VL_EN_F_ADR(filter),
       HW_ATL_RPF_VL_EN_F_MSK,
       HW_ATL_RPF_VL_EN_F_SHIFT,
       vlan_flr_en);
}
