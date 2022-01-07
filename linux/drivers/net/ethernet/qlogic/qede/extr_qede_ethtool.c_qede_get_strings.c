
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int) ;
 int ETH_GSTRING_LEN ;



 int QEDE_ETHTOOL_TEST_MAX ;
 int QEDE_PRI_FLAG_LEN ;
 int QED_MSG_DEBUG ;
 int memcpy (int *,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_get_strings_stats (struct qede_dev*,int *) ;
 int qede_private_arr ;
 int qede_tests_str_arr ;

__attribute__((used)) static void qede_get_strings(struct net_device *dev, u32 stringset, u8 *buf)
{
 struct qede_dev *edev = netdev_priv(dev);

 switch (stringset) {
 case 129:
  qede_get_strings_stats(edev, buf);
  break;
 case 130:
  memcpy(buf, qede_private_arr,
         ETH_GSTRING_LEN * QEDE_PRI_FLAG_LEN);
  break;
 case 128:
  memcpy(buf, qede_tests_str_arr,
         ETH_GSTRING_LEN * QEDE_ETHTOOL_TEST_MAX);
  break;
 default:
  DP_VERBOSE(edev, QED_MSG_DEBUG,
      "Unsupported stringset 0x%08x\n", stringset);
 }
}
