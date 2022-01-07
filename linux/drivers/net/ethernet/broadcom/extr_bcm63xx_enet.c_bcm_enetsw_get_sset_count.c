
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BCM_ENETSW_STATS_LEN ;
 int EINVAL ;


__attribute__((used)) static int bcm_enetsw_get_sset_count(struct net_device *netdev,
         int string_set)
{
 switch (string_set) {
 case 128:
  return BCM_ENETSW_STATS_LEN;
 default:
  return -EINVAL;
 }
}
