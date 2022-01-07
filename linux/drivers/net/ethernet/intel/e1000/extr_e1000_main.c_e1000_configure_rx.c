
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct e1000_rx_desc {int dummy; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int rx_int_delay; int rx_abs_int_delay; scalar_t__ itr_setting; int itr; int num_rx_queues; scalar_t__ rx_csum; TYPE_2__* rx_ring; int alloc_rx_buf; int clean_rx; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int count; int dma; int rdt; int rdh; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;


 int E1000_82542_RDH ;
 int E1000_82542_RDT ;
 int E1000_RCTL_EN ;
 int E1000_RDH ;
 int E1000_RDT ;
 int E1000_RXCSUM_TUOFL ;
 scalar_t__ ETH_DATA_LEN ;
 int ITR ;
 int RADV ;
 int RCTL ;
 int RDBAH ;
 int RDBAL ;
 int RDH ;
 int RDLEN ;
 int RDT ;
 int RDTR ;
 int RXCSUM ;
 scalar_t__ e1000_82540 ;
 scalar_t__ e1000_82543 ;
 int e1000_alloc_jumbo_rx_buffers ;
 int e1000_alloc_rx_buffers ;
 int e1000_clean_jumbo_rx_irq ;
 int e1000_clean_rx_irq ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_configure_rx(struct e1000_adapter *adapter)
{
 u64 rdba;
 struct e1000_hw *hw = &adapter->hw;
 u32 rdlen, rctl, rxcsum;

 if (adapter->netdev->mtu > ETH_DATA_LEN) {
  rdlen = adapter->rx_ring[0].count *
   sizeof(struct e1000_rx_desc);
  adapter->clean_rx = e1000_clean_jumbo_rx_irq;
  adapter->alloc_rx_buf = e1000_alloc_jumbo_rx_buffers;
 } else {
  rdlen = adapter->rx_ring[0].count *
   sizeof(struct e1000_rx_desc);
  adapter->clean_rx = e1000_clean_rx_irq;
  adapter->alloc_rx_buf = e1000_alloc_rx_buffers;
 }


 rctl = er32(RCTL);
 ew32(RCTL, rctl & ~E1000_RCTL_EN);


 ew32(RDTR, adapter->rx_int_delay);

 if (hw->mac_type >= e1000_82540) {
  ew32(RADV, adapter->rx_abs_int_delay);
  if (adapter->itr_setting != 0)
   ew32(ITR, 1000000000 / (adapter->itr * 256));
 }




 switch (adapter->num_rx_queues) {
 case 1:
 default:
  rdba = adapter->rx_ring[0].dma;
  ew32(RDLEN, rdlen);
  ew32(RDBAH, (rdba >> 32));
  ew32(RDBAL, (rdba & 0x00000000ffffffffULL));
  ew32(RDT, 0);
  ew32(RDH, 0);
  adapter->rx_ring[0].rdh = ((hw->mac_type >= e1000_82543) ?
        E1000_RDH : E1000_82542_RDH);
  adapter->rx_ring[0].rdt = ((hw->mac_type >= e1000_82543) ?
        E1000_RDT : E1000_82542_RDT);
  break;
 }


 if (hw->mac_type >= e1000_82543) {
  rxcsum = er32(RXCSUM);
  if (adapter->rx_csum)
   rxcsum |= E1000_RXCSUM_TUOFL;
  else

   rxcsum &= ~E1000_RXCSUM_TUOFL;
  ew32(RXCSUM, rxcsum);
 }


 ew32(RCTL, rctl | E1000_RCTL_EN);
}
