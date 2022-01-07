
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct fm10k_ring {int dma; int count; int reg_idx; TYPE_2__* q_vector; int vid; int qos_pc; scalar_t__ next_to_alloc; scalar_t__ next_to_use; scalar_t__ next_to_clean; int * tail; } ;
struct TYPE_3__ {int default_vid; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int rx_pause; int pfc_en; int active_vlans; int * uc_addr; struct fm10k_hw hw; } ;
struct TYPE_4__ {int v_idx; } ;


 int BIT (int ) ;
 int DMA_BIT_MASK (int) ;
 int FM10K_INT_MAP_DISABLE ;
 int FM10K_INT_MAP_TIMER1 ;
 size_t FM10K_RDBAH (int) ;
 size_t FM10K_RDBAL (int) ;
 size_t FM10K_RDH (int) ;
 size_t FM10K_RDLEN (int) ;
 size_t FM10K_RDT (int) ;
 size_t FM10K_RXDCTL (int) ;
 int FM10K_RXDCTL_DROP_ON_EMPTY ;
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ;
 size_t FM10K_RXINT (int) ;
 size_t FM10K_RXQCTL (int) ;
 int FM10K_RXQCTL_ENABLE ;
 int FM10K_RX_BUFSZ ;
 size_t FM10K_SRRCTL (int) ;
 int FM10K_SRRCTL_BSIZEPKT_SHIFT ;
 int FM10K_SRRCTL_BUFFER_CHAINING_EN ;
 int FM10K_SRRCTL_LOOPBACK_SUPPRESS ;
 int FM10K_VLAN_CLEAR ;
 int NON_Q_VECTORS ;
 int fm10k_alloc_rx_buffers (struct fm10k_ring*,int ) ;
 int fm10k_desc_unused (struct fm10k_ring*) ;
 int fm10k_read_reg (struct fm10k_hw*,size_t) ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,size_t,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void fm10k_configure_rx_ring(struct fm10k_intfc *interface,
        struct fm10k_ring *ring)
{
 u64 rdba = ring->dma;
 struct fm10k_hw *hw = &interface->hw;
 u32 size = ring->count * sizeof(union fm10k_rx_desc);
 u32 rxqctl, rxdctl = FM10K_RXDCTL_WRITE_BACK_MIN_DELAY;
 u32 srrctl = FM10K_SRRCTL_BUFFER_CHAINING_EN;
 u32 rxint = FM10K_INT_MAP_DISABLE;
 u8 rx_pause = interface->rx_pause;
 u8 reg_idx = ring->reg_idx;


 rxqctl = fm10k_read_reg(hw, FM10K_RXQCTL(reg_idx));
 rxqctl &= ~FM10K_RXQCTL_ENABLE;
 fm10k_write_reg(hw, FM10K_RXQCTL(reg_idx), rxqctl);
 fm10k_write_flush(hw);




 fm10k_write_reg(hw, FM10K_RDBAL(reg_idx), rdba & DMA_BIT_MASK(32));
 fm10k_write_reg(hw, FM10K_RDBAH(reg_idx), rdba >> 32);
 fm10k_write_reg(hw, FM10K_RDLEN(reg_idx), size);


 fm10k_write_reg(hw, FM10K_RDH(reg_idx), 0);
 fm10k_write_reg(hw, FM10K_RDT(reg_idx), 0);


 ring->tail = &interface->uc_addr[FM10K_RDT(reg_idx)];


 ring->next_to_clean = 0;
 ring->next_to_use = 0;
 ring->next_to_alloc = 0;


 srrctl |= FM10K_RX_BUFSZ >> FM10K_SRRCTL_BSIZEPKT_SHIFT;


 srrctl |= FM10K_SRRCTL_LOOPBACK_SUPPRESS;
 fm10k_write_reg(hw, FM10K_SRRCTL(reg_idx), srrctl);






 if (!(rx_pause & BIT(ring->qos_pc)))
  rxdctl |= FM10K_RXDCTL_DROP_ON_EMPTY;

 fm10k_write_reg(hw, FM10K_RXDCTL(reg_idx), rxdctl);


 ring->vid = hw->mac.default_vid;


 if (test_bit(hw->mac.default_vid, interface->active_vlans))
  ring->vid |= FM10K_VLAN_CLEAR;


 if (ring->q_vector) {
  rxint = ring->q_vector->v_idx + NON_Q_VECTORS;
  rxint |= FM10K_INT_MAP_TIMER1;
 }

 fm10k_write_reg(hw, FM10K_RXINT(reg_idx), rxint);


 rxqctl = fm10k_read_reg(hw, FM10K_RXQCTL(reg_idx));
 rxqctl |= FM10K_RXQCTL_ENABLE;
 fm10k_write_reg(hw, FM10K_RXQCTL(reg_idx), rxqctl);


 fm10k_alloc_rx_buffers(ring, fm10k_desc_unused(ring));
}
