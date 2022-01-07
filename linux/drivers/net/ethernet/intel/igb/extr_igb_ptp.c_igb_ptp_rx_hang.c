
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {unsigned long last_rx_ptp_check; unsigned long last_rx_timestamp; TYPE_1__* pdev; int rx_hwtstamp_cleared; struct e1000_hw hw; } ;
struct TYPE_3__ {int dev; } ;


 int E1000_RXSTMPH ;
 int E1000_TSYNCRXCTL ;
 int E1000_TSYNCRXCTL_VALID ;
 int HZ ;
 int dev_warn (int *,char*) ;
 scalar_t__ e1000_82576 ;
 void* jiffies ;
 int rd32 (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;

void igb_ptp_rx_hang(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 tsyncrxctl = rd32(E1000_TSYNCRXCTL);
 unsigned long rx_event;


 if (hw->mac.type != e1000_82576)
  return;




 if (!(tsyncrxctl & E1000_TSYNCRXCTL_VALID)) {
  adapter->last_rx_ptp_check = jiffies;
  return;
 }


 rx_event = adapter->last_rx_ptp_check;
 if (time_after(adapter->last_rx_timestamp, rx_event))
  rx_event = adapter->last_rx_timestamp;


 if (time_is_before_jiffies(rx_event + 5 * HZ)) {
  rd32(E1000_RXSTMPH);
  adapter->last_rx_ptp_check = jiffies;
  adapter->rx_hwtstamp_cleared++;
  dev_warn(&adapter->pdev->dev, "clearing Rx timestamp hang\n");
 }
}
