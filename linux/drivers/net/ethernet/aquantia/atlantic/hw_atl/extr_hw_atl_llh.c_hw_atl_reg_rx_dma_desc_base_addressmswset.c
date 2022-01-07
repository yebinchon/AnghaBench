
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RX_DMA_DESC_BASE_ADDRMSW_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_reg_rx_dma_desc_base_addressmswset(struct aq_hw_s *aq_hw,
            u32 rx_dma_desc_base_addrmsw,
            u32 descriptor)
{
 aq_hw_write_reg(aq_hw, HW_ATL_RX_DMA_DESC_BASE_ADDRMSW_ADR(descriptor),
   rx_dma_desc_base_addrmsw);
}
