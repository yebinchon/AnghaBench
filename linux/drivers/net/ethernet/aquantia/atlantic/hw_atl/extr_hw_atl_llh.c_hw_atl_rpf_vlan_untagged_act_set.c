
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_VL_UNTAGGED_ACT_ADR ;
 int HW_ATL_RPF_VL_UNTAGGED_ACT_MSK ;
 int HW_ATL_RPF_VL_UNTAGGED_ACT_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_vlan_untagged_act_set(struct aq_hw_s *aq_hw,
          u32 vlan_untagged_act)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_VL_UNTAGGED_ACT_ADR,
       HW_ATL_RPF_VL_UNTAGGED_ACT_MSK,
       HW_ATL_RPF_VL_UNTAGGED_ACT_SHIFT,
       vlan_untagged_act);
}
