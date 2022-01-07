
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;
struct enic {int rx_copybreak; } ;


 int EINVAL ;

 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_set_tunable(struct net_device *dev,
       const struct ethtool_tunable *tuna,
       const void *data)
{
 struct enic *enic = netdev_priv(dev);
 int ret = 0;

 switch (tuna->id) {
 case 128:
  enic->rx_copybreak = *(u32 *)data;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
