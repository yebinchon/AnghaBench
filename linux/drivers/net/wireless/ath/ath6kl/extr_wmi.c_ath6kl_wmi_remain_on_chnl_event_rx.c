
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_remain_on_chnl_event {int duration; int freq; } ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ieee80211_channel {int dummy; } ;
struct ath6kl_vif {int wdev; int last_roc_id; } ;
struct ath6kl {int wiphy; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int ath6kl_dbg (int ,char*,int ,...) ;
 int cfg80211_ready_on_channel (int *,int ,struct ieee80211_channel*,int ,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_remain_on_chnl_event_rx(struct wmi *wmi, u8 *datap,
           int len, struct ath6kl_vif *vif)
{
 struct wmi_remain_on_chnl_event *ev;
 u32 freq;
 u32 dur;
 struct ieee80211_channel *chan;
 struct ath6kl *ar = wmi->parent_dev;
 u32 id;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_remain_on_chnl_event *) datap;
 freq = le32_to_cpu(ev->freq);
 dur = le32_to_cpu(ev->duration);
 ath6kl_dbg(ATH6KL_DBG_WMI, "remain_on_chnl: freq=%u dur=%u\n",
     freq, dur);
 chan = ieee80211_get_channel(ar->wiphy, freq);
 if (!chan) {
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "remain_on_chnl: Unknown channel (freq=%u)\n",
      freq);
  return -EINVAL;
 }
 id = vif->last_roc_id;
 cfg80211_ready_on_channel(&vif->wdev, id, chan,
      dur, GFP_ATOMIC);

 return 0;
}
