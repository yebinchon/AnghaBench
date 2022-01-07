
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct igbvf_ring {size_t next_to_use; size_t count; struct igbvf_buffer* buffer_info; } ;
struct igbvf_buffer {scalar_t__ dma; int time_stamp; } ;
struct e1000_adv_tx_context_desc {void* mss_l4len_idx; void* type_tucmd_mlhl; scalar_t__ seqnum_seed; void* vlan_macip_lens; } ;


 int E1000_ADVTXD_DTYP_CTXT ;
 int E1000_TXD_CMD_DEXT ;
 struct e1000_adv_tx_context_desc* IGBVF_TX_CTXTDESC_ADV (struct igbvf_ring,size_t) ;
 void* cpu_to_le32 (int) ;
 int jiffies ;

__attribute__((used)) static void igbvf_tx_ctxtdesc(struct igbvf_ring *tx_ring, u32 vlan_macip_lens,
         u32 type_tucmd, u32 mss_l4len_idx)
{
 struct e1000_adv_tx_context_desc *context_desc;
 struct igbvf_buffer *buffer_info;
 u16 i = tx_ring->next_to_use;

 context_desc = IGBVF_TX_CTXTDESC_ADV(*tx_ring, i);
 buffer_info = &tx_ring->buffer_info[i];

 i++;
 tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;


 type_tucmd |= E1000_TXD_CMD_DEXT | E1000_ADVTXD_DTYP_CTXT;

 context_desc->vlan_macip_lens = cpu_to_le32(vlan_macip_lens);
 context_desc->seqnum_seed = 0;
 context_desc->type_tucmd_mlhl = cpu_to_le32(type_tucmd);
 context_desc->mss_l4len_idx = cpu_to_le32(mss_l4len_idx);

 buffer_info->time_stamp = jiffies;
 buffer_info->dma = 0;
}
