
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct e1000_hw {void* autoneg; void* forced_speed_duplex; int autoneg_advertised; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int __E1000_TESTING ;
 int clear_bit (int ,int *) ;
 int e1000_close (struct net_device*) ;
 scalar_t__ e1000_eeprom_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_intr_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_link_test (struct e1000_adapter*,int *) ;
 scalar_t__ e1000_loopback_test (struct e1000_adapter*,int *) ;
 int e1000_open (struct net_device*) ;
 int e1000_power_up_phy (struct e1000_adapter*) ;
 scalar_t__ e1000_reg_test (struct e1000_adapter*,int *) ;
 int e1000_reset (struct e1000_adapter*) ;
 int e_info (struct e1000_hw*,char*) ;
 int msleep_interruptible (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void e1000_diag_test(struct net_device *netdev,
       struct ethtool_test *eth_test, u64 *data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 bool if_running = netif_running(netdev);

 set_bit(__E1000_TESTING, &adapter->flags);
 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {



  u16 autoneg_advertised = hw->autoneg_advertised;
  u8 forced_speed_duplex = hw->forced_speed_duplex;
  u8 autoneg = hw->autoneg;

  e_info(hw, "offline testing starting\n");




  if (e1000_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (if_running)

   e1000_close(netdev);
  else
   e1000_reset(adapter);

  if (e1000_reg_test(adapter, &data[0]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000_reset(adapter);
  if (e1000_eeprom_test(adapter, &data[1]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000_reset(adapter);
  if (e1000_intr_test(adapter, &data[2]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  e1000_reset(adapter);

  e1000_power_up_phy(adapter);
  if (e1000_loopback_test(adapter, &data[3]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  hw->autoneg_advertised = autoneg_advertised;
  hw->forced_speed_duplex = forced_speed_duplex;
  hw->autoneg = autoneg;

  e1000_reset(adapter);
  clear_bit(__E1000_TESTING, &adapter->flags);
  if (if_running)
   e1000_open(netdev);
 } else {
  e_info(hw, "online testing starting\n");

  if (e1000_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  data[0] = 0;
  data[1] = 0;
  data[2] = 0;
  data[3] = 0;

  clear_bit(__E1000_TESTING, &adapter->flags);
 }
 msleep_interruptible(4 * 1000);
}
