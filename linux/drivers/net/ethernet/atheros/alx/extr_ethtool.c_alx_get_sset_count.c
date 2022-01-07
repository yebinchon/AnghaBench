
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ALX_NUM_STATS ;
 int EINVAL ;


__attribute__((used)) static int alx_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return ALX_NUM_STATS;
 default:
  return -EINVAL;
 }
}
