
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int itr; scalar_t__ link_speed; scalar_t__ tx_itr; int itr_setting; scalar_t__ rx_itr; int total_rx_bytes; int total_rx_packets; int total_tx_bytes; int total_tx_packets; struct e1000_hw hw; } ;


 int ITR ;
 scalar_t__ SPEED_1000 ;

 scalar_t__ e1000_82540 ;
 void* e1000_update_itr (struct e1000_adapter*,scalar_t__,int ,int ) ;
 int ew32 (int ,int) ;


 int max (int,int) ;
 int min (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void e1000_set_itr(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 current_itr;
 u32 new_itr = adapter->itr;

 if (unlikely(hw->mac_type < e1000_82540))
  return;


 if (unlikely(adapter->link_speed != SPEED_1000)) {
  current_itr = 0;
  new_itr = 4000;
  goto set_itr_now;
 }

 adapter->tx_itr = e1000_update_itr(adapter, adapter->tx_itr,
        adapter->total_tx_packets,
        adapter->total_tx_bytes);

 if (adapter->itr_setting == 3 && adapter->tx_itr == 128)
  adapter->tx_itr = 129;

 adapter->rx_itr = e1000_update_itr(adapter, adapter->rx_itr,
        adapter->total_rx_packets,
        adapter->total_rx_bytes);

 if (adapter->itr_setting == 3 && adapter->rx_itr == 128)
  adapter->rx_itr = 129;

 current_itr = max(adapter->rx_itr, adapter->tx_itr);

 switch (current_itr) {

 case 128:
  new_itr = 70000;
  break;
 case 129:
  new_itr = 20000;
  break;
 case 130:
  new_itr = 4000;
  break;
 default:
  break;
 }

set_itr_now:
 if (new_itr != adapter->itr) {




  new_itr = new_itr > adapter->itr ?
     min(adapter->itr + (new_itr >> 2), new_itr) :
     new_itr;
  adapter->itr = new_itr;
  ew32(ITR, 1000000000 / (new_itr * 256));
 }
}
