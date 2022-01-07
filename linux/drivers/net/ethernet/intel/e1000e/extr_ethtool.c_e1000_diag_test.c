
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_8__ {int parent; } ;
struct net_device {TYPE_4__ dev; } ;
struct ethtool_test {int flags; } ;
struct TYPE_6__ {void* autoneg; void* forced_speed_duplex; } ;
struct TYPE_5__ {int autoneg_wait_to_complete; int autoneg_advertised; } ;
struct TYPE_7__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct e1000_adapter {int flags; int state; TYPE_3__ hw; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int FLAG_HAS_AMT ;
 int __E1000_TESTING ;
 int clear_bit (int ,int *) ;
 scalar_t__ e1000_eeprom_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_intr_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_link_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_loopback_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_reg_test (struct e1000_adapter*,int *) ;
 int e1000e_close (struct net_device*) ;
 int e1000e_get_hw_control (struct e1000_adapter*) ;
 int e1000e_open (struct net_device*) ;
 int e1000e_power_up_phy (struct e1000_adapter*) ;
 int e1000e_release_hw_control (struct e1000_adapter*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 int e_info (char*) ;
 int msleep_interruptible (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void e1000_diag_test(struct net_device *netdev,
       struct ethtool_test *eth_test, u64 *data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 u16 autoneg_advertised;
 u8 forced_speed_duplex;
 u8 autoneg;
 bool if_running = netif_running(netdev);

 pm_runtime_get_sync(netdev->dev.parent);

 set_bit(__E1000_TESTING, &adapter->state);

 if (!if_running) {

  if (adapter->flags & FLAG_HAS_AMT)
   e1000e_get_hw_control(adapter);

  e1000e_power_up_phy(adapter);

  adapter->hw.phy.autoneg_wait_to_complete = 1;
  e1000e_reset(adapter);
  adapter->hw.phy.autoneg_wait_to_complete = 0;
 }

 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {



  autoneg_advertised = adapter->hw.phy.autoneg_advertised;
  forced_speed_duplex = adapter->hw.mac.forced_speed_duplex;
  autoneg = adapter->hw.mac.autoneg;

  e_info("offline testing starting\n");

  if (if_running)

   e1000e_close(netdev);

  if (e1000_reg_test(adapter, &data[0]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000e_reset(adapter);
  if (e1000_eeprom_test(adapter, &data[1]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000e_reset(adapter);
  if (e1000_intr_test(adapter, &data[2]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000e_reset(adapter);
  if (e1000_loopback_test(adapter, &data[3]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  adapter->hw.phy.autoneg_wait_to_complete = 1;
  e1000e_reset(adapter);
  adapter->hw.phy.autoneg_wait_to_complete = 0;

  if (e1000_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  adapter->hw.phy.autoneg_advertised = autoneg_advertised;
  adapter->hw.mac.forced_speed_duplex = forced_speed_duplex;
  adapter->hw.mac.autoneg = autoneg;
  e1000e_reset(adapter);

  clear_bit(__E1000_TESTING, &adapter->state);
  if (if_running)
   e1000e_open(netdev);
 } else {


  e_info("online testing starting\n");


  data[0] = 0;
  data[1] = 0;
  data[2] = 0;
  data[3] = 0;

  if (e1000_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  clear_bit(__E1000_TESTING, &adapter->state);
 }

 if (!if_running) {
  e1000e_reset(adapter);

  if (adapter->flags & FLAG_HAS_AMT)
   e1000e_release_hw_control(adapter);
 }

 msleep_interruptible(4 * 1000);

 pm_runtime_put_sync(netdev->dev.parent);
}
