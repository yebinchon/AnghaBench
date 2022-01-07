
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {scalar_t__ mtu; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {int flags2; int rx_ring; int tx_ring; int pdev; struct net_device* netdev; scalar_t__ link_duplex; scalar_t__ link_speed; int stats64_lock; int phy_info_timer; int napi; int state; struct e1000_hw hw; } ;


 int E1000_RCTL_EN ;
 int E1000_TCTL_EN ;
 scalar_t__ ETH_DATA_LEN ;
 int FLAG2_NO_DISABLE_RX ;
 int RCTL ;
 int TCTL ;
 int __E1000_DOWN ;
 int del_timer_sync (int *) ;
 int e1000_clean_rx_ring (int ) ;
 int e1000_clean_tx_ring (int ) ;
 int e1000_flush_desc_rings (struct e1000_adapter*) ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 scalar_t__ e1000_lv_jumbo_workaround_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1000_pch_spt ;
 int e1000e_flush_descriptors (struct e1000_adapter*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 int e1000e_update_stats (struct e1000_adapter*) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int napi_synchronize (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usleep_range (int,int) ;

void e1000e_down(struct e1000_adapter *adapter, bool reset)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 tctl, rctl;




 set_bit(__E1000_DOWN, &adapter->state);

 netif_carrier_off(netdev);


 rctl = er32(RCTL);
 if (!(adapter->flags2 & FLAG2_NO_DISABLE_RX))
  ew32(RCTL, rctl & ~E1000_RCTL_EN);


 netif_stop_queue(netdev);


 tctl = er32(TCTL);
 tctl &= ~E1000_TCTL_EN;
 ew32(TCTL, tctl);


 e1e_flush();
 usleep_range(10000, 11000);

 e1000_irq_disable(adapter);

 napi_synchronize(&adapter->napi);

 del_timer_sync(&adapter->phy_info_timer);

 spin_lock(&adapter->stats64_lock);
 e1000e_update_stats(adapter);
 spin_unlock(&adapter->stats64_lock);

 e1000e_flush_descriptors(adapter);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;


 if ((hw->mac.type >= e1000_pch2lan) &&
     (adapter->netdev->mtu > ETH_DATA_LEN) &&
     e1000_lv_jumbo_workaround_ich8lan(hw, 0))
  e_dbg("failed to disable jumbo frame workaround mode\n");

 if (!pci_channel_offline(adapter->pdev)) {
  if (reset)
   e1000e_reset(adapter);
  else if (hw->mac.type >= e1000_pch_spt)
   e1000_flush_desc_rings(adapter);
 }
 e1000_clean_tx_ring(adapter->tx_ring);
 e1000_clean_rx_ring(adapter->rx_ring);
}
