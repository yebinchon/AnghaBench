
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BCMGENET_STATS_LEN ;
 int EOPNOTSUPP ;


__attribute__((used)) static int bcmgenet_get_sset_count(struct net_device *dev, int string_set)
{
 switch (string_set) {
 case 128:
  return BCMGENET_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
