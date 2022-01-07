
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct fm10k_hw {int hw_addr; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 scalar_t__ FM10K_REMOVED (int ) ;
 int FM10K_TEST_LEN ;
 size_t FM10K_TEST_MBX ;
 int drv ;
 scalar_t__ fm10k_mbx_test (struct fm10k_intfc*,int *) ;
 int memset (int *,int ,int) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int netif_err (struct fm10k_intfc*,int ,struct net_device*,char*) ;

__attribute__((used)) static void fm10k_self_test(struct net_device *dev,
       struct ethtool_test *eth_test, u64 *data)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_hw *hw = &interface->hw;

 memset(data, 0, sizeof(*data) * FM10K_TEST_LEN);

 if (FM10K_REMOVED(hw->hw_addr)) {
  netif_err(interface, drv, dev,
     "Interface removed - test blocked\n");
  eth_test->flags |= ETH_TEST_FL_FAILED;
  return;
 }

 if (fm10k_mbx_test(interface, &data[FM10K_TEST_MBX]))
  eth_test->flags |= ETH_TEST_FL_FAILED;
}
