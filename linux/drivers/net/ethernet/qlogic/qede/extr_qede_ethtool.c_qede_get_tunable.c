
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qede_dev {int rx_copybreak; } ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 struct qede_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int qede_get_tunable(struct net_device *dev,
       const struct ethtool_tunable *tuna, void *data)
{
 struct qede_dev *edev = netdev_priv(dev);

 switch (tuna->id) {
 case 128:
  *(u32 *)data = edev->rx_copybreak;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
