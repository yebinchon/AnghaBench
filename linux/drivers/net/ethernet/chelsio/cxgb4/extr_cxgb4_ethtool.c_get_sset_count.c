
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;


 int adapter_stats_strings ;
 int cxgb4_priv_flags_strings ;
 int loopback_stats_strings ;
 int stats_strings ;

__attribute__((used)) static int get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(stats_strings) +
         ARRAY_SIZE(adapter_stats_strings) +
         ARRAY_SIZE(loopback_stats_strings);
 case 129:
  return ARRAY_SIZE(cxgb4_priv_flags_strings);
 default:
  return -EOPNOTSUPP;
 }
}
