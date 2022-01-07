
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int vht_cap_info; } ;


 int IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK ;
 int IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT ;

__attribute__((used)) static int ath10k_mac_get_vht_cap_bf_sound_dim(struct ath10k *ar)
{
 int sound_dim = ar->vht_cap_info;

 sound_dim &= IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK;
 sound_dim >>= IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT;




 if (sound_dim == 0)
  return 1;

 return sound_dim;
}
