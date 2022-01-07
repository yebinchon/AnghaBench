
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_ring {int state; TYPE_2__* xsk_umem; int reg_idx; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {TYPE_1__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_5__ {int chunk_size_nohr; } ;
struct TYPE_4__ {int mask; } ;


 int IXGBE_RXBUFFER_2K ;
 int IXGBE_RXBUFFER_3K ;
 int IXGBE_RX_HDR_SIZE ;
 int IXGBE_SRRCTL (int ) ;
 int IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT ;
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ;
 int IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int PAGE_SIZE ;
 size_t RING_F_RSS ;
 int XDP_PACKET_HEADROOM ;
 int __IXGBE_RX_3K_BUFFER ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_configure_srrctl(struct ixgbe_adapter *adapter,
       struct ixgbe_ring *rx_ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 srrctl;
 u8 reg_idx = rx_ring->reg_idx;

 if (hw->mac.type == ixgbe_mac_82598EB) {
  u16 mask = adapter->ring_feature[RING_F_RSS].mask;





  reg_idx &= mask;
 }


 srrctl = IXGBE_RX_HDR_SIZE << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;


 if (rx_ring->xsk_umem) {
  u32 xsk_buf_len = rx_ring->xsk_umem->chunk_size_nohr -
      XDP_PACKET_HEADROOM;
  if (hw->mac.type != ixgbe_mac_82599EB)
   srrctl |= PAGE_SIZE >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
  else
   srrctl |= xsk_buf_len >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 } else if (test_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state)) {
  srrctl |= IXGBE_RXBUFFER_3K >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 } else {
  srrctl |= IXGBE_RXBUFFER_2K >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 }


 srrctl |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;

 IXGBE_WRITE_REG(hw, IXGBE_SRRCTL(reg_idx), srrctl);
}
