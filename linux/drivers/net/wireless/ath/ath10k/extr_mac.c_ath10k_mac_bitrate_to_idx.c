
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ieee80211_supported_band {int n_bitrates; TYPE_1__* bitrates; } ;
struct TYPE_2__ {scalar_t__ bitrate; } ;



u8 ath10k_mac_bitrate_to_idx(const struct ieee80211_supported_band *sband,
        u32 bitrate)
{
 int i;

 for (i = 0; i < sband->n_bitrates; i++)
  if (sband->bitrates[i].bitrate == bitrate)
   return i;

 return 0;
}
