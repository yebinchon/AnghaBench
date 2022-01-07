
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_mgmt {int frame_control; } ;
struct ieee80211_channel {scalar_t__ center_freq; } ;
struct cfg80211_mgmt_tx_params {size_t len; unsigned int wait; int no_cck; int * buf; struct ieee80211_channel* chan; } ;
struct ath6kl_vif {scalar_t__ ch_hint; scalar_t__ nw_type; int fw_vif_idx; int send_action_id; int flags; int ndev; } ;
struct ath6kl {int wmi; } ;


 scalar_t__ AP_NETWORK ;
 int CONNECTED ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ath6kl_is_p2p_go_ssid (int const*,size_t) ;
 int ath6kl_mgmt_powersave_ap (struct ath6kl_vif*,scalar_t__,scalar_t__,unsigned int,int const*,size_t,int*,int) ;
 struct ath6kl* ath6kl_priv (int ) ;
 int ath6kl_send_go_probe_resp (struct ath6kl_vif*,int const*,size_t,scalar_t__) ;
 struct ath6kl_vif* ath6kl_vif_from_wdev (struct wireless_dev*) ;
 int ath6kl_wmi_send_mgmt_cmd (int ,int ,scalar_t__,scalar_t__,unsigned int,int const*,size_t,int) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
     struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
 struct ath6kl_vif *vif = ath6kl_vif_from_wdev(wdev);
 struct ath6kl *ar = ath6kl_priv(vif->ndev);
 struct ieee80211_channel *chan = params->chan;
 const u8 *buf = params->buf;
 size_t len = params->len;
 unsigned int wait = params->wait;
 bool no_cck = params->no_cck;
 u32 id, freq;
 const struct ieee80211_mgmt *mgmt;
 bool more_data, queued;




 freq = vif->ch_hint;
 if (chan)
  freq = chan->center_freq;


 if (WARN_ON(freq == 0))
  return -EINVAL;

 mgmt = (const struct ieee80211_mgmt *) buf;
 if (vif->nw_type == AP_NETWORK && test_bit(CONNECTED, &vif->flags) &&
     ieee80211_is_probe_resp(mgmt->frame_control) &&
     ath6kl_is_p2p_go_ssid(buf, len)) {




  *cookie = 0;
  return ath6kl_send_go_probe_resp(vif, buf, len, freq);
 }

 id = vif->send_action_id++;
 if (id == 0) {




  id = vif->send_action_id++;
 }

 *cookie = id;


 if (vif->nw_type == AP_NETWORK) {
  queued = ath6kl_mgmt_powersave_ap(vif, id, freq, wait, buf, len,
        &more_data, no_cck);
  if (queued)
   return 0;
 }

 return ath6kl_wmi_send_mgmt_cmd(ar->wmi, vif->fw_vif_idx, id, freq,
     wait, buf, len, no_cck);
}
