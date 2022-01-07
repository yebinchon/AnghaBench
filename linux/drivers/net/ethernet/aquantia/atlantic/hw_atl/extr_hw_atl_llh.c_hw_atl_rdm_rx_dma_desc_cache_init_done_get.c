
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int RDM_RX_DMA_DESC_CACHE_INIT_DONE_ADR ;
 int RDM_RX_DMA_DESC_CACHE_INIT_DONE_MSK ;
 int RDM_RX_DMA_DESC_CACHE_INIT_DONE_SHIFT ;
 int aq_hw_read_reg_bit (struct aq_hw_s*,int ,int ,int ) ;

u32 hw_atl_rdm_rx_dma_desc_cache_init_done_get(struct aq_hw_s *aq_hw)
{
 return aq_hw_read_reg_bit(aq_hw, RDM_RX_DMA_DESC_CACHE_INIT_DONE_ADR,
      RDM_RX_DMA_DESC_CACHE_INIT_DONE_MSK,
      RDM_RX_DMA_DESC_CACHE_INIT_DONE_SHIFT);
}
