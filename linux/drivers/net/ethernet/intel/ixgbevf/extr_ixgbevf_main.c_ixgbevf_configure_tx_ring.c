
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int dma; int count; int state; int tx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ tail; int reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {scalar_t__ io_addr; struct ixgbe_hw hw; } ;


 int DMA_BIT_MASK (int) ;
 int IXGBE_DCA_TXCTRL_DATA_RRO_EN ;
 int IXGBE_DCA_TXCTRL_DESC_RRO_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,scalar_t__) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_TXDCTL_SWFLSH ;
 scalar_t__ IXGBE_VFDCA_TXCTRL (int ) ;
 scalar_t__ IXGBE_VFTDBAH (int ) ;
 scalar_t__ IXGBE_VFTDBAL (int ) ;
 scalar_t__ IXGBE_VFTDH (int ) ;
 scalar_t__ IXGBE_VFTDLEN (int ) ;
 scalar_t__ IXGBE_VFTDT (int ) ;
 scalar_t__ IXGBE_VFTDWBAH (int ) ;
 scalar_t__ IXGBE_VFTDWBAL (int ) ;
 scalar_t__ IXGBE_VFTXDCTL (int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,scalar_t__,int) ;
 int __IXGBEVF_HANG_CHECK_ARMED ;
 int __IXGBEVF_TX_XDP_RING_PRIMED ;
 int clear_bit (int ,int *) ;
 int hw_dbg (struct ixgbe_hw*,char*,int ) ;
 int memset (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ixgbevf_configure_tx_ring(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 tdba = ring->dma;
 int wait_loop = 10;
 u32 txdctl = IXGBE_TXDCTL_ENABLE;
 u8 reg_idx = ring->reg_idx;


 IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(reg_idx), IXGBE_TXDCTL_SWFLSH);
 IXGBE_WRITE_FLUSH(hw);

 IXGBE_WRITE_REG(hw, IXGBE_VFTDBAL(reg_idx), tdba & DMA_BIT_MASK(32));
 IXGBE_WRITE_REG(hw, IXGBE_VFTDBAH(reg_idx), tdba >> 32);
 IXGBE_WRITE_REG(hw, IXGBE_VFTDLEN(reg_idx),
   ring->count * sizeof(union ixgbe_adv_tx_desc));


 IXGBE_WRITE_REG(hw, IXGBE_VFTDWBAH(reg_idx), 0);
 IXGBE_WRITE_REG(hw, IXGBE_VFTDWBAL(reg_idx), 0);


 IXGBE_WRITE_REG(hw, IXGBE_VFDCA_TXCTRL(reg_idx),
   (IXGBE_DCA_TXCTRL_DESC_RRO_EN |
    IXGBE_DCA_TXCTRL_DATA_RRO_EN));


 IXGBE_WRITE_REG(hw, IXGBE_VFTDH(reg_idx), 0);
 IXGBE_WRITE_REG(hw, IXGBE_VFTDT(reg_idx), 0);
 ring->tail = adapter->io_addr + IXGBE_VFTDT(reg_idx);


 ring->next_to_clean = 0;
 ring->next_to_use = 0;





 txdctl |= (8 << 16);


 txdctl |= (1u << 8) |
     32;


 memset(ring->tx_buffer_info, 0,
        sizeof(struct ixgbevf_tx_buffer) * ring->count);

 clear_bit(__IXGBEVF_HANG_CHECK_ARMED, &ring->state);
 clear_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);

 IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(reg_idx), txdctl);


 do {
  usleep_range(1000, 2000);
  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(reg_idx));
 } while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
 if (!wait_loop)
  hw_dbg(hw, "Could not enable Tx Queue %d\n", reg_idx);
}
