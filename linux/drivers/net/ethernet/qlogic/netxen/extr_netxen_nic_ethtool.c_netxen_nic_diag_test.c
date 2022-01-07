
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 int NETXEN_NIC_TEST_LEN ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ netxen_nic_reg_test (struct net_device*) ;
 scalar_t__ netxen_nic_test_link (struct net_device*) ;

__attribute__((used)) static void
netxen_nic_diag_test(struct net_device *dev, struct ethtool_test *eth_test,
       u64 *data)
{
 memset(data, 0, sizeof(uint64_t) * NETXEN_NIC_TEST_LEN);
 if ((data[0] = netxen_nic_reg_test(dev)))
  eth_test->flags |= ETH_TEST_FL_FAILED;

 if ((data[1] = (u64) netxen_nic_test_link(dev)))
  eth_test->flags |= ETH_TEST_FL_FAILED;
}
