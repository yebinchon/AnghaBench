
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RX_INTR_MODERATION_CTL_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_reg_rx_intr_moder_ctrl_set(struct aq_hw_s *aq_hw,
           u32 rx_intr_moderation_ctl,
           u32 queue)
{
 aq_hw_write_reg(aq_hw, HW_ATL_RX_INTR_MODERATION_CTL_ADR(queue),
   rx_intr_moderation_ctl);
}
