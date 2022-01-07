
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_TX_DMA_DEBUG_CTL_ADR ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_reg_tx_dma_debug_ctl_set(struct aq_hw_s *aq_hw,
         u32 tx_dma_debug_ctl)
{
 aq_hw_write_reg(aq_hw, HW_ATL_TX_DMA_DEBUG_CTL_ADR, tx_dma_debug_ctl);
}
