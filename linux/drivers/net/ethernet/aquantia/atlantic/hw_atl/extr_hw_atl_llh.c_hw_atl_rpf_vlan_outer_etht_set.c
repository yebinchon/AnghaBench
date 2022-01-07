
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_VL_OUTER_TPID_ADR ;
 int HW_ATL_RPF_VL_OUTER_TPID_MSK ;
 int HW_ATL_RPF_VL_OUTER_TPID_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_vlan_outer_etht_set(struct aq_hw_s *aq_hw, u32 vlan_outer_etht)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_VL_OUTER_TPID_ADR,
       HW_ATL_RPF_VL_OUTER_TPID_MSK,
       HW_ATL_RPF_VL_OUTER_TPID_SHIFT,
       vlan_outer_etht);
}
