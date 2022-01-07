
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPB_RXBHI_THRESH_ADR (int ) ;
 int HW_ATL_RPB_RXBHI_THRESH_MSK ;
 int HW_ATL_RPB_RXBHI_THRESH_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(struct aq_hw_s *aq_hw,
      u32 rx_buff_hi_threshold_per_tc,
      u32 buffer)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPB_RXBHI_THRESH_ADR(buffer),
       HW_ATL_RPB_RXBHI_THRESH_MSK,
       HW_ATL_RPB_RXBHI_THRESH_SHIFT,
       rx_buff_hi_threshold_per_tc);
}
