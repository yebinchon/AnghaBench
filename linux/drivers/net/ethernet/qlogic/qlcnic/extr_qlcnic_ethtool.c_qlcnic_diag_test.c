
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_EXTERNAL_LB ;
 int ETH_TEST_FL_EXTERNAL_LB_DONE ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int QLCNIC_ELB_MODE ;
 int QLCNIC_ILB_MODE ;
 int QLCNIC_TEST_LEN ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ qlcnic_eeprom_test (struct net_device*) ;
 scalar_t__ qlcnic_irq_test (struct net_device*) ;
 scalar_t__ qlcnic_loopback_test (struct net_device*,int ) ;
 scalar_t__ qlcnic_reg_test (struct net_device*) ;
 int qlcnic_test_link (struct net_device*) ;

__attribute__((used)) static void
qlcnic_diag_test(struct net_device *dev, struct ethtool_test *eth_test,
       u64 *data)
{
 memset(data, 0, sizeof(u64) * QLCNIC_TEST_LEN);

 data[0] = qlcnic_reg_test(dev);
 if (data[0])
  eth_test->flags |= ETH_TEST_FL_FAILED;

 data[1] = (u64) qlcnic_test_link(dev);
 if (data[1])
  eth_test->flags |= ETH_TEST_FL_FAILED;

 if (eth_test->flags & ETH_TEST_FL_OFFLINE) {
  data[2] = qlcnic_irq_test(dev);
  if (data[2])
   eth_test->flags |= ETH_TEST_FL_FAILED;

  data[3] = qlcnic_loopback_test(dev, QLCNIC_ILB_MODE);
  if (data[3])
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (eth_test->flags & ETH_TEST_FL_EXTERNAL_LB) {
   data[4] = qlcnic_loopback_test(dev, QLCNIC_ELB_MODE);
   if (data[4])
    eth_test->flags |= ETH_TEST_FL_FAILED;
   eth_test->flags |= ETH_TEST_FL_EXTERNAL_LB_DONE;
  }

  data[5] = qlcnic_eeprom_test(dev);
  if (data[5])
   eth_test->flags |= ETH_TEST_FL_FAILED;
 }
}
