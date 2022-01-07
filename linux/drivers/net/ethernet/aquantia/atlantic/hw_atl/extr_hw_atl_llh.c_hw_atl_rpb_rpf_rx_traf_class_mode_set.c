
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPB_RPF_RX_TC_MODE_ADR ;
 int HW_ATL_RPB_RPF_RX_TC_MODE_MSK ;
 int HW_ATL_RPB_RPF_RX_TC_MODE_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpb_rpf_rx_traf_class_mode_set(struct aq_hw_s *aq_hw,
        u32 rx_traf_class_mode)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPB_RPF_RX_TC_MODE_ADR,
       HW_ATL_RPB_RPF_RX_TC_MODE_MSK,
       HW_ATL_RPB_RPF_RX_TC_MODE_SHIFT,
       rx_traf_class_mode);
}
