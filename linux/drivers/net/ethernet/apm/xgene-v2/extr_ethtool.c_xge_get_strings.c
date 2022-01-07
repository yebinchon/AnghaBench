
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int XGE_EXTD_STATS_LEN ;
 int XGE_STATS_LEN ;
 TYPE_2__* gstrings_extd_stats ;
 TYPE_1__* gstrings_stats ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void xge_get_strings(struct net_device *ndev, u32 stringset, u8 *data)
{
 u8 *p = data;
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < XGE_STATS_LEN; i++) {
  memcpy(p, gstrings_stats[i].name, ETH_GSTRING_LEN);
  p += ETH_GSTRING_LEN;
 }

 for (i = 0; i < XGE_EXTD_STATS_LEN; i++) {
  memcpy(p, gstrings_extd_stats[i].name, ETH_GSTRING_LEN);
  p += ETH_GSTRING_LEN;
 }
}
