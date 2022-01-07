
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPB_RXBXOFF_EN_ADR (int ) ;
 int HW_ATL_RPB_RXBXOFF_EN_MSK ;
 int HW_ATL_RPB_RXBXOFF_EN_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpb_rx_xoff_en_per_tc_set(struct aq_hw_s *aq_hw, u32 rx_xoff_en_per_tc,
          u32 buffer)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPB_RXBXOFF_EN_ADR(buffer),
       HW_ATL_RPB_RXBXOFF_EN_MSK,
       HW_ATL_RPB_RXBXOFF_EN_SHIFT,
       rx_xoff_en_per_tc);
}
