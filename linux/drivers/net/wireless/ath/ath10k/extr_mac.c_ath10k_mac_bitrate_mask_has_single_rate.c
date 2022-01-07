
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct ath10k {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int * vht_mcs; int * ht_mcs; int legacy; } ;


 int ARRAY_SIZE (int *) ;
 int hweight16 (int ) ;
 scalar_t__ hweight32 (int ) ;
 scalar_t__ hweight8 (int ) ;

__attribute__((used)) static bool
ath10k_mac_bitrate_mask_has_single_rate(struct ath10k *ar,
     enum nl80211_band band,
     const struct cfg80211_bitrate_mask *mask,
     int *vht_num_rates)
{
 int num_rates = 0;
 int i, tmp;

 num_rates += hweight32(mask->control[band].legacy);

 for (i = 0; i < ARRAY_SIZE(mask->control[band].ht_mcs); i++)
  num_rates += hweight8(mask->control[band].ht_mcs[i]);

 *vht_num_rates = 0;
 for (i = 0; i < ARRAY_SIZE(mask->control[band].vht_mcs); i++) {
  tmp = hweight16(mask->control[band].vht_mcs[i]);
  num_rates += tmp;
  *vht_num_rates += tmp;
 }

 return num_rates == 1;
}
