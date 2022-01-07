
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct fm10k_tx_desc {int dummy; } ;
struct fm10k_ring {int dma; int count; int queue_index; TYPE_1__* q_vector; int netdev; int state; scalar_t__ next_to_use; scalar_t__ next_to_clean; int * tail; int reg_idx; } ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int * uc_addr; struct fm10k_hw hw; } ;
struct TYPE_2__ {int v_idx; int affinity_mask; } ;


 int BIT (int ) ;
 int DMA_BIT_MASK (int) ;
 int FM10K_INT_MAP_DISABLE ;
 int FM10K_INT_MAP_TIMER0 ;
 size_t FM10K_PFVTCTL (int ) ;
 int FM10K_PFVTCTL_FTAG_DESC_ENABLE ;
 size_t FM10K_TDBAH (int ) ;
 size_t FM10K_TDBAL (int ) ;
 size_t FM10K_TDH (int ) ;
 size_t FM10K_TDLEN (int ) ;
 size_t FM10K_TDT (int ) ;
 size_t FM10K_TXDCTL (int ) ;
 int FM10K_TXDCTL_ENABLE ;
 int FM10K_TXDCTL_MAX_TIME_SHIFT ;
 size_t FM10K_TXINT (int ) ;
 int NON_Q_VECTORS ;
 int __FM10K_TX_XPS_INIT_DONE ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,size_t,int) ;
 int netif_set_xps_queue (int ,int *,int ) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static void fm10k_configure_tx_ring(struct fm10k_intfc *interface,
        struct fm10k_ring *ring)
{
 struct fm10k_hw *hw = &interface->hw;
 u64 tdba = ring->dma;
 u32 size = ring->count * sizeof(struct fm10k_tx_desc);
 u32 txint = FM10K_INT_MAP_DISABLE;
 u32 txdctl = BIT(FM10K_TXDCTL_MAX_TIME_SHIFT) | FM10K_TXDCTL_ENABLE;
 u8 reg_idx = ring->reg_idx;


 fm10k_write_reg(hw, FM10K_TXDCTL(reg_idx), 0);
 fm10k_write_flush(hw);




 fm10k_write_reg(hw, FM10K_TDBAL(reg_idx), tdba & DMA_BIT_MASK(32));
 fm10k_write_reg(hw, FM10K_TDBAH(reg_idx), tdba >> 32);
 fm10k_write_reg(hw, FM10K_TDLEN(reg_idx), size);


 fm10k_write_reg(hw, FM10K_TDH(reg_idx), 0);
 fm10k_write_reg(hw, FM10K_TDT(reg_idx), 0);


 ring->tail = &interface->uc_addr[FM10K_TDT(reg_idx)];


 ring->next_to_clean = 0;
 ring->next_to_use = 0;


 if (ring->q_vector) {
  txint = ring->q_vector->v_idx + NON_Q_VECTORS;
  txint |= FM10K_INT_MAP_TIMER0;
 }

 fm10k_write_reg(hw, FM10K_TXINT(reg_idx), txint);


 fm10k_write_reg(hw, FM10K_PFVTCTL(reg_idx),
   FM10K_PFVTCTL_FTAG_DESC_ENABLE);


 if (!test_and_set_bit(__FM10K_TX_XPS_INIT_DONE, ring->state) &&
     ring->q_vector)
  netif_set_xps_queue(ring->netdev,
        &ring->q_vector->affinity_mask,
        ring->queue_index);


 fm10k_write_reg(hw, FM10K_TXDCTL(reg_idx), txdctl);
}
