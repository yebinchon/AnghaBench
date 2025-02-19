
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; int hw_addr; } ;
struct ixgbe_adapter {int flags; int num_vfs; int state; TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct ethtool_test {int flags; } ;
struct TYPE_4__ {scalar_t__ clear_to_send; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_FLAG_VMDQ_ENABLED ;
 int __IXGBE_TESTING ;
 int clear_bit (int ,int *) ;
 int e_err (struct ixgbe_hw*,char*) ;
 int e_info (struct ixgbe_hw*,char*) ;
 struct ixgbe_hw* hw ;
 int ixgbe_close (struct net_device*) ;
 scalar_t__ ixgbe_eeprom_test (struct ixgbe_adapter*,int*) ;
 scalar_t__ ixgbe_intr_test (struct ixgbe_adapter*,int*) ;
 scalar_t__ ixgbe_link_test (struct ixgbe_adapter*,int*) ;
 scalar_t__ ixgbe_loopback_test (struct ixgbe_adapter*,int*) ;
 int ixgbe_open (struct net_device*) ;
 scalar_t__ ixgbe_reg_test (struct ixgbe_adapter*,int*) ;
 scalar_t__ ixgbe_removed (int ) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int msleep_interruptible (int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_diag_test(struct net_device *netdev,
       struct ethtool_test *eth_test, u64 *data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 bool if_running = netif_running(netdev);

 if (ixgbe_removed(adapter->hw.hw_addr)) {
  e_err(hw, "Adapter removed - test blocked\n");
  data[0] = 1;
  data[1] = 1;
  data[2] = 1;
  data[3] = 1;
  data[4] = 1;
  eth_test->flags |= ETH_TEST_FL_FAILED;
  return;
 }
 set_bit(__IXGBE_TESTING, &adapter->state);
 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
  struct ixgbe_hw *hw = &adapter->hw;

  if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
   int i;
   for (i = 0; i < adapter->num_vfs; i++) {
    if (adapter->vfinfo[i].clear_to_send) {
     netdev_warn(netdev, "offline diagnostic is not supported when VFs are present\n");
     data[0] = 1;
     data[1] = 1;
     data[2] = 1;
     data[3] = 1;
     data[4] = 1;
     eth_test->flags |= ETH_TEST_FL_FAILED;
     clear_bit(__IXGBE_TESTING,
        &adapter->state);
     goto skip_ol_tests;
    }
   }
  }


  e_info(hw, "offline testing starting\n");




  if (ixgbe_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (if_running)

   ixgbe_close(netdev);
  else
   ixgbe_reset(adapter);

  e_info(hw, "register testing starting\n");
  if (ixgbe_reg_test(adapter, &data[0]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  ixgbe_reset(adapter);
  e_info(hw, "eeprom testing starting\n");
  if (ixgbe_eeprom_test(adapter, &data[1]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  ixgbe_reset(adapter);
  e_info(hw, "interrupt testing starting\n");
  if (ixgbe_intr_test(adapter, &data[2]))
   eth_test->flags |= ETH_TEST_FL_FAILED;



  if (adapter->flags & (IXGBE_FLAG_SRIOV_ENABLED |
          IXGBE_FLAG_VMDQ_ENABLED)) {
   e_info(hw, "Skip MAC loopback diagnostic in VT mode\n");
   data[3] = 0;
   goto skip_loopback;
  }

  ixgbe_reset(adapter);
  e_info(hw, "loopback testing starting\n");
  if (ixgbe_loopback_test(adapter, &data[3]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

skip_loopback:
  ixgbe_reset(adapter);


  clear_bit(__IXGBE_TESTING, &adapter->state);
  if (if_running)
   ixgbe_open(netdev);
  else if (hw->mac.ops.disable_tx_laser)
   hw->mac.ops.disable_tx_laser(hw);
 } else {
  e_info(hw, "online testing starting\n");


  if (ixgbe_link_test(adapter, &data[4]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  data[0] = 0;
  data[1] = 0;
  data[2] = 0;
  data[3] = 0;

  clear_bit(__IXGBE_TESTING, &adapter->state);
 }

skip_ol_tests:
 msleep_interruptible(4 * 1000);
}
