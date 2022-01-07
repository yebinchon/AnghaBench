
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mt76_dev {int antenna_mask; } ;
struct TYPE_4__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {TYPE_2__ vht_mcs; int cap; } ;
struct TYPE_3__ {int* rx_mask; } ;
struct ieee80211_sta_ht_cap {TYPE_1__ mcs; int cap; } ;
struct ieee80211_supported_band {struct ieee80211_sta_vht_cap vht_cap; struct ieee80211_sta_ht_cap ht_cap; } ;


 int IEEE80211_HT_CAP_TX_STBC ;
 int IEEE80211_HT_MCS_MASK_LEN ;
 int IEEE80211_VHT_CAP_TXSTBC ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 void* cpu_to_le16 (int) ;
 int hweight8 (int ) ;

__attribute__((used)) static void mt76_init_stream_cap(struct mt76_dev *dev,
     struct ieee80211_supported_band *sband,
     bool vht)
{
 struct ieee80211_sta_ht_cap *ht_cap = &sband->ht_cap;
 int i, nstream = hweight8(dev->antenna_mask);
 struct ieee80211_sta_vht_cap *vht_cap;
 u16 mcs_map = 0;

 if (nstream > 1)
  ht_cap->cap |= IEEE80211_HT_CAP_TX_STBC;
 else
  ht_cap->cap &= ~IEEE80211_HT_CAP_TX_STBC;

 for (i = 0; i < IEEE80211_HT_MCS_MASK_LEN; i++)
  ht_cap->mcs.rx_mask[i] = i < nstream ? 0xff : 0;

 if (!vht)
  return;

 vht_cap = &sband->vht_cap;
 if (nstream > 1)
  vht_cap->cap |= IEEE80211_VHT_CAP_TXSTBC;
 else
  vht_cap->cap &= ~IEEE80211_VHT_CAP_TXSTBC;

 for (i = 0; i < 8; i++) {
  if (i < nstream)
   mcs_map |= (IEEE80211_VHT_MCS_SUPPORT_0_9 << (i * 2));
  else
   mcs_map |=
    (IEEE80211_VHT_MCS_NOT_SUPPORTED << (i * 2));
 }
 vht_cap->vht_mcs.rx_mcs_map = cpu_to_le16(mcs_map);
 vht_cap->vht_mcs.tx_mcs_map = cpu_to_le16(mcs_map);
}
