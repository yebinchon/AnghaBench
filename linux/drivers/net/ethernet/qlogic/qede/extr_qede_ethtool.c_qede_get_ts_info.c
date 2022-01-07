
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_ts_info {int dummy; } ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_ptp_get_ts_info (struct qede_dev*,struct ethtool_ts_info*) ;

__attribute__((used)) static int qede_get_ts_info(struct net_device *dev,
       struct ethtool_ts_info *info)
{
 struct qede_dev *edev = netdev_priv(dev);

 return qede_ptp_get_ts_info(edev, info);
}
