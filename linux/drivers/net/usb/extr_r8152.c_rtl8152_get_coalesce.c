
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int version; int coalesce; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 int EOPNOTSUPP ;



 struct r8152* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8152_get_coalesce(struct net_device *netdev,
    struct ethtool_coalesce *coalesce)
{
 struct r8152 *tp = netdev_priv(netdev);

 switch (tp->version) {
 case 130:
 case 129:
 case 128:
  return -EOPNOTSUPP;
 default:
  break;
 }

 coalesce->rx_coalesce_usecs = tp->coalesce;

 return 0;
}
