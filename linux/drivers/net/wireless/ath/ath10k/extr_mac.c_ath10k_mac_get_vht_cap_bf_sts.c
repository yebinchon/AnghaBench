
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int vht_cap_info; } ;


 int IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK ;
 int IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT ;

__attribute__((used)) static int ath10k_mac_get_vht_cap_bf_sts(struct ath10k *ar)
{
 int nsts = ar->vht_cap_info;

 nsts &= IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK;
 nsts >>= IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT;





 if (nsts == 0)
  return 3;

 return nsts;
}
