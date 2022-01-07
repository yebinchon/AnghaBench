
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int rx_copybreak; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_set_tunable(struct net_device *dev,
        const struct ethtool_tunable *tuna,
        const void *data)
{
 struct ionic_lif *lif = netdev_priv(dev);

 switch (tuna->id) {
 case 128:
  lif->rx_copybreak = *(u32 *)data;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
