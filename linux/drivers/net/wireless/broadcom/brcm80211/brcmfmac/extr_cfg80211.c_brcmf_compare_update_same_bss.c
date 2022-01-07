
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmu_chan {scalar_t__ band; void* chspec; } ;
struct TYPE_2__ {int (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_1__ d11inf; } ;
struct brcmf_bss_info_le {scalar_t__ SSID_len; int flags; int RSSI; int * SSID; int BSSID; int chanspec; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;


 int BRCMF_BSS_RSSI_ON_CHANNEL ;
 scalar_t__ ETH_ALEN ;
 void* le16_to_cpu (int ) ;
 int memcmp (int *,int *,scalar_t__) ;
 int stub1 (struct brcmu_chan*) ;
 int stub2 (struct brcmu_chan*) ;

__attribute__((used)) static s32
brcmf_compare_update_same_bss(struct brcmf_cfg80211_info *cfg,
         struct brcmf_bss_info_le *bss,
         struct brcmf_bss_info_le *bss_info_le)
{
 struct brcmu_chan ch_bss, ch_bss_info_le;

 ch_bss.chspec = le16_to_cpu(bss->chanspec);
 cfg->d11inf.decchspec(&ch_bss);
 ch_bss_info_le.chspec = le16_to_cpu(bss_info_le->chanspec);
 cfg->d11inf.decchspec(&ch_bss_info_le);

 if (!memcmp(&bss_info_le->BSSID, &bss->BSSID, ETH_ALEN) &&
  ch_bss.band == ch_bss_info_le.band &&
  bss_info_le->SSID_len == bss->SSID_len &&
  !memcmp(bss_info_le->SSID, bss->SSID, bss_info_le->SSID_len)) {
  if ((bss->flags & BRCMF_BSS_RSSI_ON_CHANNEL) ==
   (bss_info_le->flags & BRCMF_BSS_RSSI_ON_CHANNEL)) {
   s16 bss_rssi = le16_to_cpu(bss->RSSI);
   s16 bss_info_rssi = le16_to_cpu(bss_info_le->RSSI);




   if (bss_info_rssi > bss_rssi)
    bss->RSSI = bss_info_le->RSSI;
  } else if ((bss->flags & BRCMF_BSS_RSSI_ON_CHANNEL) &&
   (bss_info_le->flags & BRCMF_BSS_RSSI_ON_CHANNEL) == 0) {



   bss->RSSI = bss_info_le->RSSI;
   bss->flags |= BRCMF_BSS_RSSI_ON_CHANNEL;
  }
  return 1;
 }
 return 0;
}
