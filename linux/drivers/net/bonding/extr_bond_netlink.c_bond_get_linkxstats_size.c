
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;




 size_t bond_3ad_stats_size () ;
 size_t nla_total_size (int ) ;

__attribute__((used)) static size_t bond_get_linkxstats_size(const struct net_device *dev, int attr)
{
 switch (attr) {
 case 129:
 case 128:
  break;
 default:
  return 0;
 }

 return bond_3ad_stats_size() + nla_total_size(0);
}
