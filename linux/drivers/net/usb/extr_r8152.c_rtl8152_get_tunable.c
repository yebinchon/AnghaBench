
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int rx_copybreak; } ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 struct r8152* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8152_get_tunable(struct net_device *netdev,
          const struct ethtool_tunable *tunable, void *d)
{
 struct r8152 *tp = netdev_priv(netdev);

 switch (tunable->id) {
 case 128:
  *(u32 *)d = tp->rx_copybreak;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
