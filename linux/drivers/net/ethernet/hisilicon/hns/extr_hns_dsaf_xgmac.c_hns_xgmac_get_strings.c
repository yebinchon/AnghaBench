
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {char* desc; } ;


 scalar_t__ ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 TYPE_1__* g_xgmac_stats_string ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static void hns_xgmac_get_strings(u32 stringset, u8 *data)
{
 char *buff = (char *)data;
 u32 i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < ARRAY_SIZE(g_xgmac_stats_string); i++) {
  snprintf(buff, ETH_GSTRING_LEN, g_xgmac_stats_string[i].desc);
  buff = buff + ETH_GSTRING_LEN;
 }
}
