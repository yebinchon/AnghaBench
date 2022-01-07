
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wmi_cancel_remain_on_chnl_event {int status; int duration; int freq; } ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ieee80211_channel {int dummy; } ;
struct ath6kl_vif {scalar_t__ last_cancel_roc_id; scalar_t__ last_roc_id; int wdev; } ;
struct ath6kl {int wiphy; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int ath6kl_dbg (int ,char*,scalar_t__,...) ;
 int cfg80211_remain_on_channel_expired (int *,scalar_t__,struct ieee80211_channel*,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_cancel_remain_on_chnl_event_rx(struct wmi *wmi,
           u8 *datap, int len,
           struct ath6kl_vif *vif)
{
 struct wmi_cancel_remain_on_chnl_event *ev;
 u32 freq;
 u32 dur;
 struct ieee80211_channel *chan;
 struct ath6kl *ar = wmi->parent_dev;
 u32 id;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_cancel_remain_on_chnl_event *) datap;
 freq = le32_to_cpu(ev->freq);
 dur = le32_to_cpu(ev->duration);
 ath6kl_dbg(ATH6KL_DBG_WMI,
     "cancel_remain_on_chnl: freq=%u dur=%u status=%u\n",
     freq, dur, ev->status);
 chan = ieee80211_get_channel(ar->wiphy, freq);
 if (!chan) {
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "cancel_remain_on_chnl: Unknown channel (freq=%u)\n",
      freq);
  return -EINVAL;
 }
 if (vif->last_cancel_roc_id &&
     vif->last_cancel_roc_id + 1 == vif->last_roc_id)
  id = vif->last_cancel_roc_id;
 else
  id = vif->last_roc_id;
 vif->last_cancel_roc_id = 0;
 cfg80211_remain_on_channel_expired(&vif->wdev, id, chan, GFP_ATOMIC);

 return 0;
}
