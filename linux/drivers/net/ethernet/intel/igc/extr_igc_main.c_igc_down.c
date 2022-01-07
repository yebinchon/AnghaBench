
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int num_q_vectors; int flags; int pdev; scalar_t__ link_duplex; scalar_t__ link_speed; int stats64_lock; int phy_info_timer; int watchdog_timer; TYPE_1__** q_vector; int state; struct igc_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int napi; } ;


 int IGC_FLAG_NEED_LINK_UPDATE ;
 int IGC_FLAG_VLAN_PROMISC ;
 int IGC_RCTL ;
 int IGC_RCTL_EN ;
 int IGC_TCTL ;
 int IGC_TCTL_EN ;
 int __IGC_DOWN ;
 int del_timer_sync (int *) ;
 int igc_clean_all_rx_rings (struct igc_adapter*) ;
 int igc_clean_all_tx_rings (struct igc_adapter*) ;
 int igc_irq_disable (struct igc_adapter*) ;
 int igc_nfc_filter_exit (struct igc_adapter*) ;
 int igc_reset (struct igc_adapter*) ;
 int igc_update_stats (struct igc_adapter*) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int rd32 (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igc_down(struct igc_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct igc_hw *hw = &adapter->hw;
 u32 tctl, rctl;
 int i = 0;

 set_bit(__IGC_DOWN, &adapter->state);


 rctl = rd32(IGC_RCTL);
 wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);


 igc_nfc_filter_exit(adapter);


 netif_trans_update(netdev);

 netif_carrier_off(netdev);
 netif_tx_stop_all_queues(netdev);


 tctl = rd32(IGC_TCTL);
 tctl &= ~IGC_TCTL_EN;
 wr32(IGC_TCTL, tctl);

 wrfl();
 usleep_range(10000, 20000);

 igc_irq_disable(adapter);

 adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;

 for (i = 0; i < adapter->num_q_vectors; i++) {
  if (adapter->q_vector[i]) {
   napi_synchronize(&adapter->q_vector[i]->napi);
   napi_disable(&adapter->q_vector[i]->napi);
  }
 }

 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_info_timer);


 spin_lock(&adapter->stats64_lock);
 igc_update_stats(adapter);
 spin_unlock(&adapter->stats64_lock);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;

 if (!pci_channel_offline(adapter->pdev))
  igc_reset(adapter);


 adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;

 igc_clean_all_tx_rings(adapter);
 igc_clean_all_rx_rings(adapter);
}
