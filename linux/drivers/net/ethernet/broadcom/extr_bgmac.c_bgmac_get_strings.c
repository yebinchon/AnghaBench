
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int BGMAC_STATS_LEN ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 TYPE_1__* bgmac_get_strings_stats ;
 int strlcpy (int *,int ,int) ;

__attribute__((used)) static void bgmac_get_strings(struct net_device *dev, u32 stringset,
         u8 *data)
{
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < BGMAC_STATS_LEN; i++)
  strlcpy(data + i * ETH_GSTRING_LEN,
   bgmac_get_strings_stats[i].name, ETH_GSTRING_LEN);
}
