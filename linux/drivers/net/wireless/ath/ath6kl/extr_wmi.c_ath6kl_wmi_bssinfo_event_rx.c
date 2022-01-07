
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_bss_info_hdr2 {int snr; scalar_t__ frame_type; int bssid; int ch; } ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct ath6kl_vif {int assoc_bss_dtim_period; int sched_scan_timer; int flags; int bssid; int fw_vif_idx; } ;
struct ath6kl {int wiphy; int wmi; } ;
typedef int __le64 ;
typedef int __le16 ;


 int ATH6KL_DBG_WMI ;
 int ATH6KL_SCHED_SCAN_RESULT_DELAY ;
 scalar_t__ BEACON_FTYPE ;
 int CFG80211_BSS_FTYPE_BEACON ;
 int CFG80211_BSS_FTYPE_PRESP ;
 int CLEAR_BSSFILTER_ON_BEACON ;
 int CONNECTED ;
 int DTIM_PERIOD_AVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int NONE_BSS_FILTER ;
 scalar_t__ PROBERESP_FTYPE ;
 int SCHED_SCANNING ;
 int WLAN_EID_TIM ;
 int ath6kl_dbg (int ,char*,int ,int,int,int ,scalar_t__) ;
 int ath6kl_wmi_bssfilter_cmd (int ,int ,int ,int ) ;
 int* cfg80211_find_ie (int ,int*,int) ;
 struct cfg80211_bss* cfg80211_inform_bss (int ,struct ieee80211_channel*,int ,int ,int ,int ,int ,int*,int,int,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int clear_bit (int ,int *) ;
 int get_unaligned_le16 (int *) ;
 int get_unaligned_le64 (int *) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 scalar_t__ jiffies ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer_pending (int *) ;

__attribute__((used)) static int ath6kl_wmi_bssinfo_event_rx(struct wmi *wmi, u8 *datap, int len,
           struct ath6kl_vif *vif)
{
 struct wmi_bss_info_hdr2 *bih;
 u8 *buf;
 struct ieee80211_channel *channel;
 struct ath6kl *ar = wmi->parent_dev;
 struct cfg80211_bss *bss;

 if (len <= sizeof(struct wmi_bss_info_hdr2))
  return -EINVAL;

 bih = (struct wmi_bss_info_hdr2 *) datap;
 buf = datap + sizeof(struct wmi_bss_info_hdr2);
 len -= sizeof(struct wmi_bss_info_hdr2);

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "bss info evt - ch %u, snr %d, rssi %d, bssid \"%pM\" "
     "frame_type=%d\n",
     bih->ch, bih->snr, bih->snr - 95, bih->bssid,
     bih->frame_type);

 if (bih->frame_type != BEACON_FTYPE &&
     bih->frame_type != PROBERESP_FTYPE)
  return 0;

 if (bih->frame_type == BEACON_FTYPE &&
     test_bit(CLEAR_BSSFILTER_ON_BEACON, &vif->flags)) {
  clear_bit(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
  ath6kl_wmi_bssfilter_cmd(ar->wmi, vif->fw_vif_idx,
      NONE_BSS_FILTER, 0);
 }

 channel = ieee80211_get_channel(ar->wiphy, le16_to_cpu(bih->ch));
 if (channel == ((void*)0))
  return -EINVAL;

 if (len < 8 + 2 + 2)
  return -EINVAL;

 if (bih->frame_type == BEACON_FTYPE &&
     test_bit(CONNECTED, &vif->flags) &&
     memcmp(bih->bssid, vif->bssid, ETH_ALEN) == 0) {
  const u8 *tim;
  tim = cfg80211_find_ie(WLAN_EID_TIM, buf + 8 + 2 + 2,
           len - 8 - 2 - 2);
  if (tim && tim[1] >= 2) {
   vif->assoc_bss_dtim_period = tim[3];
   set_bit(DTIM_PERIOD_AVAIL, &vif->flags);
  }
 }

 bss = cfg80211_inform_bss(ar->wiphy, channel,
      bih->frame_type == BEACON_FTYPE ?
     CFG80211_BSS_FTYPE_BEACON :
     CFG80211_BSS_FTYPE_PRESP,
      bih->bssid, get_unaligned_le64((__le64 *)buf),
      get_unaligned_le16(((__le16 *)buf) + 5),
      get_unaligned_le16(((__le16 *)buf) + 4),
      buf + 8 + 2 + 2, len - 8 - 2 - 2,
      (bih->snr - 95) * 100, GFP_ATOMIC);
 if (bss == ((void*)0))
  return -ENOMEM;
 cfg80211_put_bss(ar->wiphy, bss);
 if (test_bit(SCHED_SCANNING, &vif->flags) &&
     !timer_pending(&vif->sched_scan_timer)) {
  mod_timer(&vif->sched_scan_timer, jiffies +
     msecs_to_jiffies(ATH6KL_SCHED_SCAN_RESULT_DELAY));
 }

 return 0;
}
