
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef unsigned int u32 ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_ring {int dma; int count; int tx_buffer_info; int state; int queue_index; int netdev; struct ixgbe_q_vector* q_vector; scalar_t__ atr_sample_rate; scalar_t__ atr_count; scalar_t__ tail; int * xsk_umem; int reg_idx; } ;
struct ixgbe_q_vector {scalar_t__ itr; int affinity_mask; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; scalar_t__ atr_sample_rate; scalar_t__ io_addr; struct ixgbe_hw hw; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IXGBE_100K_ITR ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 scalar_t__ IXGBE_LINKS ;
 unsigned int IXGBE_LINKS_UP ;
 unsigned int IXGBE_READ_REG (struct ixgbe_hw*,scalar_t__) ;
 scalar_t__ IXGBE_TDBAH (int ) ;
 scalar_t__ IXGBE_TDBAL (int ) ;
 scalar_t__ IXGBE_TDH (int ) ;
 scalar_t__ IXGBE_TDLEN (int ) ;
 scalar_t__ IXGBE_TDT (int ) ;
 scalar_t__ IXGBE_TXDCTL (int ) ;
 unsigned int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,scalar_t__,unsigned int) ;
 int __IXGBE_HANG_CHECK_ARMED ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 int __IXGBE_TX_XPS_INIT_DONE ;
 int clear_bit (int ,int *) ;
 int hw_dbg (struct ixgbe_hw*,char*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int * ixgbe_xsk_umem (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int memset (int ,int ,int) ;
 int netif_set_xps_queue (int ,int *,int ) ;
 scalar_t__ ring_is_xdp (struct ixgbe_ring*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_configure_tx_ring(struct ixgbe_adapter *adapter,
        struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 tdba = ring->dma;
 int wait_loop = 10;
 u32 txdctl = IXGBE_TXDCTL_ENABLE;
 u8 reg_idx = ring->reg_idx;

 ring->xsk_umem = ((void*)0);
 if (ring_is_xdp(ring))
  ring->xsk_umem = ixgbe_xsk_umem(adapter, ring);


 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), 0);
 IXGBE_WRITE_FLUSH(hw);

 IXGBE_WRITE_REG(hw, IXGBE_TDBAL(reg_idx),
   (tdba & DMA_BIT_MASK(32)));
 IXGBE_WRITE_REG(hw, IXGBE_TDBAH(reg_idx), (tdba >> 32));
 IXGBE_WRITE_REG(hw, IXGBE_TDLEN(reg_idx),
   ring->count * sizeof(union ixgbe_adv_tx_desc));
 IXGBE_WRITE_REG(hw, IXGBE_TDH(reg_idx), 0);
 IXGBE_WRITE_REG(hw, IXGBE_TDT(reg_idx), 0);
 ring->tail = adapter->io_addr + IXGBE_TDT(reg_idx);
 if (!ring->q_vector || (ring->q_vector->itr < IXGBE_100K_ITR))
  txdctl |= 1u << 16;
 else
  txdctl |= 8u << 16;





 txdctl |= (1u << 8) |
     32;


 if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
  ring->atr_sample_rate = adapter->atr_sample_rate;
  ring->atr_count = 0;
  set_bit(__IXGBE_TX_FDIR_INIT_DONE, &ring->state);
 } else {
  ring->atr_sample_rate = 0;
 }


 if (!test_and_set_bit(__IXGBE_TX_XPS_INIT_DONE, &ring->state)) {
  struct ixgbe_q_vector *q_vector = ring->q_vector;

  if (q_vector)
   netif_set_xps_queue(ring->netdev,
         &q_vector->affinity_mask,
         ring->queue_index);
 }

 clear_bit(__IXGBE_HANG_CHECK_ARMED, &ring->state);


 memset(ring->tx_buffer_info, 0,
        sizeof(struct ixgbe_tx_buffer) * ring->count);


 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), txdctl);


 if (hw->mac.type == ixgbe_mac_82598EB &&
     !(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  return;


 do {
  usleep_range(1000, 2000);
  txdctl = IXGBE_READ_REG(hw, IXGBE_TXDCTL(reg_idx));
 } while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
 if (!wait_loop)
  hw_dbg(hw, "Could not enable Tx Queue %d\n", reg_idx);
}
