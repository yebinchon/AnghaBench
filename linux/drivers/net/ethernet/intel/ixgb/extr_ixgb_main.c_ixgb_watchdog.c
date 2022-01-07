
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgb_desc_ring {scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ fc; scalar_t__ link_up; } ;
struct ixgb_adapter {int link_speed; int detect_tx_hung; int watchdog_timer; TYPE_2__ hw; int tx_timeout_task; scalar_t__ link_duplex; struct ixgb_desc_ring tx_ring; struct net_device* netdev; } ;


 scalar_t__ FULL_DUPLEX ;
 int HZ ;
 int ICS ;
 scalar_t__ IXGB_DESC_UNUSED (struct ixgb_desc_ring*) ;
 int IXGB_INT_TXDW ;
 int IXGB_WRITE_REG (TYPE_2__*,int ,int ) ;
 struct ixgb_adapter* adapter ;
 struct ixgb_adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ ixgb_check_for_bad_link (TYPE_2__*) ;
 int ixgb_check_for_link (TYPE_2__*) ;
 scalar_t__ ixgb_fc_full ;
 scalar_t__ ixgb_fc_rx_pause ;
 scalar_t__ ixgb_fc_tx_pause ;
 int ixgb_update_stats (struct ixgb_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_info (struct net_device*,char*,...) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int watchdog_timer ;

__attribute__((used)) static void
ixgb_watchdog(struct timer_list *t)
{
 struct ixgb_adapter *adapter = from_timer(adapter, t, watchdog_timer);
 struct net_device *netdev = adapter->netdev;
 struct ixgb_desc_ring *txdr = &adapter->tx_ring;

 ixgb_check_for_link(&adapter->hw);

 if (ixgb_check_for_bad_link(&adapter->hw)) {

  netif_stop_queue(netdev);
 }

 if (adapter->hw.link_up) {
  if (!netif_carrier_ok(netdev)) {
   netdev_info(netdev,
        "NIC Link is Up 10 Gbps Full Duplex, Flow Control: %s\n",
        (adapter->hw.fc.type == ixgb_fc_full) ?
        "RX/TX" :
        (adapter->hw.fc.type == ixgb_fc_rx_pause) ?
         "RX" :
        (adapter->hw.fc.type == ixgb_fc_tx_pause) ?
        "TX" : "None");
   adapter->link_speed = 10000;
   adapter->link_duplex = FULL_DUPLEX;
   netif_carrier_on(netdev);
  }
 } else {
  if (netif_carrier_ok(netdev)) {
   adapter->link_speed = 0;
   adapter->link_duplex = 0;
   netdev_info(netdev, "NIC Link is Down\n");
   netif_carrier_off(netdev);
  }
 }

 ixgb_update_stats(adapter);

 if (!netif_carrier_ok(netdev)) {
  if (IXGB_DESC_UNUSED(txdr) + 1 < txdr->count) {




   schedule_work(&adapter->tx_timeout_task);

   return;
  }
 }


 adapter->detect_tx_hung = 1;


 IXGB_WRITE_REG(&adapter->hw, ICS, IXGB_INT_TXDW);


 mod_timer(&adapter->watchdog_timer, jiffies + 2 * HZ);
}
