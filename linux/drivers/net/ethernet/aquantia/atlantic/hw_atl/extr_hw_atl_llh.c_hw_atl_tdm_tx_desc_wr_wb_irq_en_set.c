
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_TDM_INT_DESC_WRB_EN_ADR ;
 int HW_ATL_TDM_INT_DESC_WRB_EN_MSK ;
 int HW_ATL_TDM_INT_DESC_WRB_EN_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_tdm_tx_desc_wr_wb_irq_en_set(struct aq_hw_s *aq_hw,
      u32 tx_desc_wr_wb_irq_en)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_TDM_INT_DESC_WRB_EN_ADR,
       HW_ATL_TDM_INT_DESC_WRB_EN_MSK,
       HW_ATL_TDM_INT_DESC_WRB_EN_SHIFT,
       tx_desc_wr_wb_irq_en);
}
