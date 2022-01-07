
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igb_ring {int reg_idx; int netdev; int * dev; int count; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int netdev; TYPE_1__* pdev; struct e1000_hw hw; struct igb_ring test_rx_ring; struct igb_ring test_tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int E1000_MRQC ;
 int IGB_DEFAULT_RXD ;
 int IGB_DEFAULT_TXD ;
 int igb_alloc_rx_buffers (struct igb_ring*,int ) ;
 int igb_configure_rx_ring (struct igb_adapter*,struct igb_ring*) ;
 int igb_configure_tx_ring (struct igb_adapter*,struct igb_ring*) ;
 int igb_desc_unused (struct igb_ring*) ;
 int igb_free_desc_rings (struct igb_adapter*) ;
 int igb_setup_rctl (struct igb_adapter*) ;
 scalar_t__ igb_setup_rx_resources (struct igb_ring*) ;
 int igb_setup_tctl (struct igb_adapter*) ;
 scalar_t__ igb_setup_tx_resources (struct igb_ring*) ;
 int wr32 (int ,int) ;

__attribute__((used)) static int igb_setup_desc_rings(struct igb_adapter *adapter)
{
 struct igb_ring *tx_ring = &adapter->test_tx_ring;
 struct igb_ring *rx_ring = &adapter->test_rx_ring;
 struct e1000_hw *hw = &adapter->hw;
 int ret_val;


 tx_ring->count = IGB_DEFAULT_TXD;
 tx_ring->dev = &adapter->pdev->dev;
 tx_ring->netdev = adapter->netdev;
 tx_ring->reg_idx = adapter->vfs_allocated_count;

 if (igb_setup_tx_resources(tx_ring)) {
  ret_val = 1;
  goto err_nomem;
 }

 igb_setup_tctl(adapter);
 igb_configure_tx_ring(adapter, tx_ring);


 rx_ring->count = IGB_DEFAULT_RXD;
 rx_ring->dev = &adapter->pdev->dev;
 rx_ring->netdev = adapter->netdev;
 rx_ring->reg_idx = adapter->vfs_allocated_count;

 if (igb_setup_rx_resources(rx_ring)) {
  ret_val = 3;
  goto err_nomem;
 }


 wr32(E1000_MRQC, adapter->vfs_allocated_count << 3);


 igb_setup_rctl(adapter);
 igb_configure_rx_ring(adapter, rx_ring);

 igb_alloc_rx_buffers(rx_ring, igb_desc_unused(rx_ring));

 return 0;

err_nomem:
 igb_free_desc_rings(adapter);
 return ret_val;
}
