
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int state; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 int __IGBVF_TESTING ;
 int clear_bit (int ,int *) ;
 scalar_t__ igbvf_link_test (struct igbvf_adapter*,int *) ;
 int msleep_interruptible (int) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void igbvf_diag_test(struct net_device *netdev,
       struct ethtool_test *eth_test, u64 *data)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 set_bit(__IGBVF_TESTING, &adapter->state);




 if (igbvf_link_test(adapter, &data[0]))
  eth_test->flags |= ETH_TEST_FL_FAILED;

 clear_bit(__IGBVF_TESTING, &adapter->state);
 msleep_interruptible(4 * 1000);
}
