
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tc; } ;
struct qede_dev {int xdp_prog; TYPE_1__ dev_info; } ;
struct net_device {int dummy; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int) ;
 int EINVAL ;



 int IS_VF (struct qede_dev*) ;
 int QEDE_ETHTOOL_TEST_MAX ;
 int QEDE_NUM_RQSTATS ;
 int QEDE_NUM_STATS ;
 int QEDE_NUM_TQSTATS ;
 int QEDE_PRI_FLAG_LEN ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 int QEDE_TSS_COUNT (struct qede_dev*) ;
 int QED_MSG_DEBUG ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_is_irrelevant_stat (struct qede_dev*,int) ;

__attribute__((used)) static int qede_get_sset_count(struct net_device *dev, int stringset)
{
 struct qede_dev *edev = netdev_priv(dev);
 int num_stats = QEDE_NUM_STATS, i;

 switch (stringset) {
 case 129:
  for (i = 0; i < QEDE_NUM_STATS; i++)
   if (qede_is_irrelevant_stat(edev, i))
    num_stats--;


  num_stats += QEDE_TSS_COUNT(edev) * QEDE_NUM_TQSTATS *
    edev->dev_info.num_tc;


  num_stats += QEDE_RSS_COUNT(edev) * QEDE_NUM_RQSTATS;


  if (edev->xdp_prog)
   num_stats += QEDE_RSS_COUNT(edev) * QEDE_NUM_TQSTATS;
  return num_stats;

 case 130:
  return QEDE_PRI_FLAG_LEN;
 case 128:
  if (!IS_VF(edev))
   return QEDE_ETHTOOL_TEST_MAX;
  else
   return 0;
 default:
  DP_VERBOSE(edev, QED_MSG_DEBUG,
      "Unsupported stringset 0x%08x\n", stringset);
  return -EINVAL;
 }
}
