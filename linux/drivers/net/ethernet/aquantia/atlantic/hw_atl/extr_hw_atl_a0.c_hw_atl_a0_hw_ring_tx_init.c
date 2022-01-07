
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct aq_ring_s {unsigned int size; int idx; scalar_t__ dx_ring_pa; } ;
struct aq_ring_param_s {int cpu; int vec_idx; } ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_a0_hw_tx_ring_tail_update (struct aq_hw_s*,struct aq_ring_s*) ;
 int hw_atl_itr_irq_map_en_tx_set (struct aq_hw_s*,int,int ) ;
 int hw_atl_itr_irq_map_tx_set (struct aq_hw_s*,int ,int ) ;
 int hw_atl_reg_tx_dma_desc_base_addresslswset (struct aq_hw_s*,int ,int ) ;
 int hw_atl_reg_tx_dma_desc_base_addressmswset (struct aq_hw_s*,int ,int ) ;
 int hw_atl_tdm_cpu_id_set (struct aq_hw_s*,int ,int ) ;
 int hw_atl_tdm_tx_desc_dca_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_tdm_tx_desc_len_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_tdm_tx_desc_wr_wb_threshold_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_ring_tx_init(struct aq_hw_s *self,
         struct aq_ring_s *aq_ring,
         struct aq_ring_param_s *aq_ring_param)
{
 u32 dma_desc_lsw_addr = (u32)aq_ring->dx_ring_pa;
 u32 dma_desc_msw_addr = (u32)(((u64)aq_ring->dx_ring_pa) >> 32);

 hw_atl_reg_tx_dma_desc_base_addresslswset(self, dma_desc_lsw_addr,
        aq_ring->idx);

 hw_atl_reg_tx_dma_desc_base_addressmswset(self, dma_desc_msw_addr,
        aq_ring->idx);

 hw_atl_tdm_tx_desc_len_set(self, aq_ring->size / 8U, aq_ring->idx);

 hw_atl_a0_hw_tx_ring_tail_update(self, aq_ring);


 hw_atl_tdm_tx_desc_wr_wb_threshold_set(self, 0U, aq_ring->idx);


 hw_atl_itr_irq_map_tx_set(self, aq_ring_param->vec_idx, aq_ring->idx);
 hw_atl_itr_irq_map_en_tx_set(self, 1, aq_ring->idx);

 hw_atl_tdm_cpu_id_set(self, aq_ring_param->cpu, aq_ring->idx);
 hw_atl_tdm_tx_desc_dca_en_set(self, 0U, aq_ring->idx);

 return aq_hw_err_from_flags(self);
}
