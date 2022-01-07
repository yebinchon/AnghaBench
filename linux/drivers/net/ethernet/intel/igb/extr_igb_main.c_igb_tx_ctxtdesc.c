
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct timespec64 {int tv_nsec; } ;
struct igb_tx_buffer {TYPE_1__* skb; } ;
struct igb_ring {scalar_t__ next_to_use; scalar_t__ count; int reg_idx; scalar_t__ launchtime_enable; int flags; } ;
struct e1000_adv_tx_context_desc {void* seqnum_seed; void* mss_l4len_idx; void* type_tucmd_mlhl; void* vlan_macip_lens; } ;
struct TYPE_2__ {int tstamp; } ;


 int E1000_ADVTXD_DTYP_CTXT ;
 int E1000_TXD_CMD_DEXT ;
 int IGB_RING_FLAG_TX_CTX_IDX ;
 struct e1000_adv_tx_context_desc* IGB_TX_CTXTDESC (struct igb_ring*,scalar_t__) ;
 void* cpu_to_le32 (int) ;
 int ktime_set (int ,int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void igb_tx_ctxtdesc(struct igb_ring *tx_ring,
       struct igb_tx_buffer *first,
       u32 vlan_macip_lens, u32 type_tucmd,
       u32 mss_l4len_idx)
{
 struct e1000_adv_tx_context_desc *context_desc;
 u16 i = tx_ring->next_to_use;
 struct timespec64 ts;

 context_desc = IGB_TX_CTXTDESC(tx_ring, i);

 i++;
 tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;


 type_tucmd |= E1000_TXD_CMD_DEXT | E1000_ADVTXD_DTYP_CTXT;


 if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
  mss_l4len_idx |= tx_ring->reg_idx << 4;

 context_desc->vlan_macip_lens = cpu_to_le32(vlan_macip_lens);
 context_desc->type_tucmd_mlhl = cpu_to_le32(type_tucmd);
 context_desc->mss_l4len_idx = cpu_to_le32(mss_l4len_idx);




 if (tx_ring->launchtime_enable) {
  ts = ktime_to_timespec64(first->skb->tstamp);
  first->skb->tstamp = ktime_set(0, 0);
  context_desc->seqnum_seed = cpu_to_le32(ts.tv_nsec / 32);
 } else {
  context_desc->seqnum_seed = 0;
 }
}
