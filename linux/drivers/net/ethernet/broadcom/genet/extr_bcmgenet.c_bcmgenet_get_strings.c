
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int BCMGENET_STATS_LEN ;
 int ETH_GSTRING_LEN ;

 TYPE_1__* bcmgenet_gstrings_stats ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void bcmgenet_get_strings(struct net_device *dev, u32 stringset,
     u8 *data)
{
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < BCMGENET_STATS_LEN; i++) {
   memcpy(data + i * ETH_GSTRING_LEN,
          bcmgenet_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
  }
  break;
 }
}
