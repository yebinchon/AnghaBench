
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

 int SXGBE_STATS_LEN ;

__attribute__((used)) static int sxgbe_get_sset_count(struct net_device *netdev, int sset)
{
 int len;

 switch (sset) {
 case 128:
  len = SXGBE_STATS_LEN;
  return len;
 default:
  return -EINVAL;
 }
}
