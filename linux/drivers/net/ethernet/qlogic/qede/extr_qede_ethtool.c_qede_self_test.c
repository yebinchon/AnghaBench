
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct qede_dev {int cdev; TYPE_3__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {TYPE_1__* selftest; } ;
struct TYPE_4__ {scalar_t__ (* selftest_nvram ) (int ) ;scalar_t__ (* selftest_clock ) (int ) ;scalar_t__ (* selftest_register ) (int ) ;scalar_t__ (* selftest_memory ) (int ) ;scalar_t__ (* selftest_interrupt ) (int ) ;} ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int,int) ;
 int ETH_TEST_FL_EXTERNAL_LB ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 size_t QEDE_ETHTOOL_CLOCK_TEST ;
 size_t QEDE_ETHTOOL_INTERRUPT_TEST ;
 size_t QEDE_ETHTOOL_INT_LOOPBACK ;
 size_t QEDE_ETHTOOL_MEMORY_TEST ;
 size_t QEDE_ETHTOOL_NVRAM_TEST ;
 size_t QEDE_ETHTOOL_REGISTER_TEST ;
 int QEDE_ETHTOOL_TEST_MAX ;
 int QED_LINK_LOOPBACK_INT_PHY ;
 int QED_MSG_DEBUG ;
 int memset (int*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 scalar_t__ qede_selftest_run_loopback (struct qede_dev*,int ) ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ) ;
 scalar_t__ stub3 (int ) ;
 scalar_t__ stub4 (int ) ;
 scalar_t__ stub5 (int ) ;

__attribute__((used)) static void qede_self_test(struct net_device *dev,
      struct ethtool_test *etest, u64 *buf)
{
 struct qede_dev *edev = netdev_priv(dev);

 DP_VERBOSE(edev, QED_MSG_DEBUG,
     "Self-test command parameters: offline = %d, external_lb = %d\n",
     (etest->flags & ETH_TEST_FL_OFFLINE),
     (etest->flags & ETH_TEST_FL_EXTERNAL_LB) >> 2);

 memset(buf, 0, sizeof(u64) * QEDE_ETHTOOL_TEST_MAX);

 if (etest->flags & ETH_TEST_FL_OFFLINE) {
  if (qede_selftest_run_loopback(edev,
            QED_LINK_LOOPBACK_INT_PHY)) {
   buf[QEDE_ETHTOOL_INT_LOOPBACK] = 1;
   etest->flags |= ETH_TEST_FL_FAILED;
  }
 }

 if (edev->ops->common->selftest->selftest_interrupt(edev->cdev)) {
  buf[QEDE_ETHTOOL_INTERRUPT_TEST] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }

 if (edev->ops->common->selftest->selftest_memory(edev->cdev)) {
  buf[QEDE_ETHTOOL_MEMORY_TEST] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }

 if (edev->ops->common->selftest->selftest_register(edev->cdev)) {
  buf[QEDE_ETHTOOL_REGISTER_TEST] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }

 if (edev->ops->common->selftest->selftest_clock(edev->cdev)) {
  buf[QEDE_ETHTOOL_CLOCK_TEST] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }

 if (edev->ops->common->selftest->selftest_nvram(edev->cdev)) {
  buf[QEDE_ETHTOOL_NVRAM_TEST] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }
}
