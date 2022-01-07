
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qede_dev {int rx_copybreak; } ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int QEDE_MIN_PKT_LEN ;
 int QEDE_RX_HDR_SIZE ;
 int QED_MSG_DEBUG ;
 struct qede_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int qede_set_tunable(struct net_device *dev,
       const struct ethtool_tunable *tuna,
       const void *data)
{
 struct qede_dev *edev = netdev_priv(dev);
 u32 val;

 switch (tuna->id) {
 case 128:
  val = *(u32 *)data;
  if (val < QEDE_MIN_PKT_LEN || val > QEDE_RX_HDR_SIZE) {
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "Invalid rx copy break value, range is [%u, %u]",
       QEDE_MIN_PKT_LEN, QEDE_RX_HDR_SIZE);
   return -EINVAL;
  }

  edev->rx_copybreak = *(u32 *)data;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
