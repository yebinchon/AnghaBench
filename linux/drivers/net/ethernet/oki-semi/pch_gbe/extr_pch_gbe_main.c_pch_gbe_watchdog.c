
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ link_duplex; int link_speed; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {int watchdog_timer; int mii; int tx_queue_len; struct pch_gbe_hw hw; struct net_device* netdev; } ;
struct net_device {int tx_queue_len; } ;
struct ethtool_cmd {scalar_t__ duplex; int cmd; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int ETHTOOL_GSET ;
 scalar_t__ PCH_GBE_WATCHDOG_PERIOD ;
 int SPEED_10 ;
 struct pch_gbe_adapter* adapter ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 struct pch_gbe_adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 scalar_t__ mii_link_ok (int *) ;
 int mod_timer (int *,int ) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pch_gbe_set_mode (struct pch_gbe_adapter*,int ,scalar_t__) ;
 int pch_gbe_set_rgmii_ctrl (struct pch_gbe_adapter*,int ,scalar_t__) ;
 int pch_gbe_update_stats (struct pch_gbe_adapter*) ;
 int round_jiffies (scalar_t__) ;
 int watchdog_timer ;

__attribute__((used)) static void pch_gbe_watchdog(struct timer_list *t)
{
 struct pch_gbe_adapter *adapter = from_timer(adapter, t,
           watchdog_timer);
 struct net_device *netdev = adapter->netdev;
 struct pch_gbe_hw *hw = &adapter->hw;

 netdev_dbg(netdev, "right now = %ld\n", jiffies);

 pch_gbe_update_stats(adapter);
 if ((mii_link_ok(&adapter->mii)) && (!netif_carrier_ok(netdev))) {
  struct ethtool_cmd cmd = { .cmd = ETHTOOL_GSET };
  netdev->tx_queue_len = adapter->tx_queue_len;

  if (mii_ethtool_gset(&adapter->mii, &cmd)) {
   netdev_err(netdev, "ethtool get setting Error\n");
   mod_timer(&adapter->watchdog_timer,
      round_jiffies(jiffies +
      PCH_GBE_WATCHDOG_PERIOD));
   return;
  }
  hw->mac.link_speed = ethtool_cmd_speed(&cmd);
  hw->mac.link_duplex = cmd.duplex;

  pch_gbe_set_rgmii_ctrl(adapter, hw->mac.link_speed,
      hw->mac.link_duplex);

  pch_gbe_set_mode(adapter, hw->mac.link_speed,
     hw->mac.link_duplex);
  netdev_dbg(netdev,
      "Link is Up %d Mbps %s-Duplex\n",
      hw->mac.link_speed,
      cmd.duplex == DUPLEX_FULL ? "Full" : "Half");
  netif_carrier_on(netdev);
  netif_wake_queue(netdev);
 } else if ((!mii_link_ok(&adapter->mii)) &&
     (netif_carrier_ok(netdev))) {
  netdev_dbg(netdev, "NIC Link is Down\n");
  hw->mac.link_speed = SPEED_10;
  hw->mac.link_duplex = DUPLEX_HALF;
  netif_carrier_off(netdev);
  netif_stop_queue(netdev);
 }
 mod_timer(&adapter->watchdog_timer,
    round_jiffies(jiffies + PCH_GBE_WATCHDOG_PERIOD));
}
