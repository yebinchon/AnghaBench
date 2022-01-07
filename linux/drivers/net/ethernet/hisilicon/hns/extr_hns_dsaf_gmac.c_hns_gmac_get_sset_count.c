
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int ETH_SS_STATS ;
 int g_gmac_stats_string ;

__attribute__((used)) static int hns_gmac_get_sset_count(int stringset)
{
 if (stringset == ETH_SS_STATS)
  return ARRAY_SIZE(g_gmac_stats_string);

 return 0;
}
