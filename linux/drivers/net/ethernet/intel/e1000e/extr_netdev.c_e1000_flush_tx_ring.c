
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int data; } ;
struct e1000_tx_desc {TYPE_2__ upper; TYPE_1__ lower; int buffer_addr; } ;
struct e1000_ring {int next_to_use; int count; int dma; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_ring* tx_ring; struct e1000_hw hw; } ;


 int BUG_ON (int) ;
 int E1000_TCTL_EN ;
 int E1000_TXD_CMD_IFCS ;
 struct e1000_tx_desc* E1000_TX_DESC (struct e1000_ring,int) ;
 int TCTL ;
 int TDT (int ) ;
 int cpu_to_le32 (int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;
 int wmb () ;

__attribute__((used)) static void e1000_flush_tx_ring(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_ring *tx_ring = adapter->tx_ring;
 struct e1000_tx_desc *tx_desc = ((void*)0);
 u32 tdt, tctl, txd_lower = E1000_TXD_CMD_IFCS;
 u16 size = 512;

 tctl = er32(TCTL);
 ew32(TCTL, tctl | E1000_TCTL_EN);
 tdt = er32(TDT(0));
 BUG_ON(tdt != tx_ring->next_to_use);
 tx_desc = E1000_TX_DESC(*tx_ring, tx_ring->next_to_use);
 tx_desc->buffer_addr = tx_ring->dma;

 tx_desc->lower.data = cpu_to_le32(txd_lower | size);
 tx_desc->upper.data = 0;

 wmb();
 tx_ring->next_to_use++;
 if (tx_ring->next_to_use == tx_ring->count)
  tx_ring->next_to_use = 0;
 ew32(TDT(0), tx_ring->next_to_use);
 usleep_range(200, 250);
}
