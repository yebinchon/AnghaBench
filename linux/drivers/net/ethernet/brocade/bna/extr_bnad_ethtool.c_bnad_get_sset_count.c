
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int bnad_get_stats_count_locked (struct net_device*) ;

__attribute__((used)) static int
bnad_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return bnad_get_stats_count_locked(netdev);
 default:
  return -EOPNOTSUPP;
 }
}
