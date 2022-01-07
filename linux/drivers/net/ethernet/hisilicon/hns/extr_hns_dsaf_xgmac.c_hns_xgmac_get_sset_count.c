
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int ETH_SS_PRIV_FLAGS ;
 int ETH_SS_STATS ;
 int g_xgmac_stats_string ;

__attribute__((used)) static int hns_xgmac_get_sset_count(int stringset)
{
 if (stringset == ETH_SS_STATS || stringset == ETH_SS_PRIV_FLAGS)
  return ARRAY_SIZE(g_xgmac_stats_string);

 return 0;
}
