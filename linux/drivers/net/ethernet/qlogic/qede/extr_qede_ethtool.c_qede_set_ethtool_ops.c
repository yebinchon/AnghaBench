
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct net_device {int * ethtool_ops; } ;


 scalar_t__ IS_VF (struct qede_dev*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_ethtool_ops ;
 int qede_vf_ethtool_ops ;

void qede_set_ethtool_ops(struct net_device *dev)
{
 struct qede_dev *edev = netdev_priv(dev);

 if (IS_VF(edev))
  dev->ethtool_ops = &qede_vf_ethtool_ops;
 else
  dev->ethtool_ops = &qede_ethtool_ops;
}
