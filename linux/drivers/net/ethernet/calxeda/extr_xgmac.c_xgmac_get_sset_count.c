
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

 int XGMAC_STATS_LEN ;

__attribute__((used)) static int xgmac_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return XGMAC_STATS_LEN;
 default:
  return -EINVAL;
 }
}
