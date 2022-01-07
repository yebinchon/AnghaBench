
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPO_DESCDVL_STRIP_ADR (int ) ;
 int HW_ATL_RPO_DESCDVL_STRIP_MSK ;
 int HW_ATL_RPO_DESCDVL_STRIP_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpo_rx_desc_vlan_stripping_set(struct aq_hw_s *aq_hw,
        u32 rx_desc_vlan_stripping,
        u32 descriptor)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPO_DESCDVL_STRIP_ADR(descriptor),
       HW_ATL_RPO_DESCDVL_STRIP_MSK,
       HW_ATL_RPO_DESCDVL_STRIP_SHIFT,
       rx_desc_vlan_stripping);
}
