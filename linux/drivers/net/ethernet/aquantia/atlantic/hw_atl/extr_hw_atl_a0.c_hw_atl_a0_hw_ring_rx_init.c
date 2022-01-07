
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct aq_ring_s {unsigned int size; int idx; scalar_t__ dx_ring_pa; } ;
struct aq_ring_param_s {int cpu; int vec_idx; } ;
struct aq_hw_s {int dummy; } ;


 unsigned int AQ_CFG_RX_FRAME_MAX ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_itr_irq_map_en_rx_set (struct aq_hw_s*,int,int ) ;
 int hw_atl_itr_irq_map_rx_set (struct aq_hw_s*,int ,int ) ;
 int hw_atl_rdm_cpu_id_set (struct aq_hw_s*,int ,int ) ;
 int hw_atl_rdm_rx_desc_data_buff_size_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_desc_dca_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_desc_en_set (struct aq_hw_s*,int,int ) ;
 int hw_atl_rdm_rx_desc_head_buff_size_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_desc_head_splitting_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_desc_len_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_head_dca_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rdm_rx_pld_dca_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_reg_rx_dma_desc_base_addresslswset (struct aq_hw_s*,int ,int ) ;
 int hw_atl_reg_rx_dma_desc_base_addressmswset (struct aq_hw_s*,int ,int ) ;
 int hw_atl_rpo_rx_desc_vlan_stripping_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_ring_rx_init(struct aq_hw_s *self,
         struct aq_ring_s *aq_ring,
         struct aq_ring_param_s *aq_ring_param)
{
 u32 dma_desc_addr_lsw = (u32)aq_ring->dx_ring_pa;
 u32 dma_desc_addr_msw = (u32)(((u64)aq_ring->dx_ring_pa) >> 32);

 hw_atl_rdm_rx_desc_en_set(self, 0, aq_ring->idx);

 hw_atl_rdm_rx_desc_head_splitting_set(self, 0U, aq_ring->idx);

 hw_atl_reg_rx_dma_desc_base_addresslswset(self, dma_desc_addr_lsw,
        aq_ring->idx);

 hw_atl_reg_rx_dma_desc_base_addressmswset(self,
        dma_desc_addr_msw,
        aq_ring->idx);

 hw_atl_rdm_rx_desc_len_set(self, aq_ring->size / 8U, aq_ring->idx);

 hw_atl_rdm_rx_desc_data_buff_size_set(self,
           AQ_CFG_RX_FRAME_MAX / 1024U,
           aq_ring->idx);

 hw_atl_rdm_rx_desc_head_buff_size_set(self, 0U, aq_ring->idx);
 hw_atl_rdm_rx_desc_head_splitting_set(self, 0U, aq_ring->idx);
 hw_atl_rpo_rx_desc_vlan_stripping_set(self, 0U, aq_ring->idx);




 hw_atl_itr_irq_map_rx_set(self, aq_ring_param->vec_idx, aq_ring->idx);
 hw_atl_itr_irq_map_en_rx_set(self, 1, aq_ring->idx);

 hw_atl_rdm_cpu_id_set(self, aq_ring_param->cpu, aq_ring->idx);
 hw_atl_rdm_rx_desc_dca_en_set(self, 0U, aq_ring->idx);
 hw_atl_rdm_rx_head_dca_en_set(self, 0U, aq_ring->idx);
 hw_atl_rdm_rx_pld_dca_en_set(self, 0U, aq_ring->idx);

 return aq_hw_err_from_flags(self);
}
