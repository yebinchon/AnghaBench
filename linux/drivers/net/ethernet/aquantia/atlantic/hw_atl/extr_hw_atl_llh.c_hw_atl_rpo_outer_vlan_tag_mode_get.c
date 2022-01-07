
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HW_ATL_RPO_OUTER_VL_INS_MODE_ADR ;
 int HW_ATL_RPO_OUTER_VL_INS_MODE_MSK ;
 int HW_ATL_RPO_OUTER_VL_INS_MODE_SHIFT ;
 int aq_hw_read_reg_bit (void*,int ,int ,int ) ;

u32 hw_atl_rpo_outer_vlan_tag_mode_get(void *context)
{
 return aq_hw_read_reg_bit(context, HW_ATL_RPO_OUTER_VL_INS_MODE_ADR,
      HW_ATL_RPO_OUTER_VL_INS_MODE_MSK,
      HW_ATL_RPO_OUTER_VL_INS_MODE_SHIFT);
}
