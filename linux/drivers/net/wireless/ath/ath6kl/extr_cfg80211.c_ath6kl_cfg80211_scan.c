
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; int rates; int no_cck; TYPE_1__** channels; int ie_len; int ie; int n_ssids; int ssids; int wdev; } ;
struct ath6kl_vif {struct cfg80211_scan_request* scan_req; int fw_vif_idx; int flags; int ndev; } ;
struct ath6kl {int wmi; int usr_bss_filter; } ;
typedef size_t s8 ;
struct TYPE_2__ {int center_freq; } ;


 int ALL_BSS_FILTER ;
 int ATH6KL_FG_SCAN_INTERVAL ;
 int CLEAR_BSSFILTER_ON_BEACON ;
 int CONNECTED ;
 int EIO ;
 int GFP_KERNEL ;
 int WMI_FRAME_PROBE_REQ ;
 int WMI_LONG_SCAN ;
 scalar_t__ WMI_MAX_CHANNELS ;
 int ath6kl_cfg80211_ready (struct ath6kl_vif*) ;
 int ath6kl_cfg80211_sscan_disable (struct ath6kl_vif*) ;
 int ath6kl_err (char*,...) ;
 struct ath6kl* ath6kl_priv (int ) ;
 int ath6kl_set_probed_ssids (struct ath6kl*,struct ath6kl_vif*,int ,int ,int *,int ) ;
 struct ath6kl_vif* ath6kl_vif_from_wdev (int ) ;
 int ath6kl_warn (char*) ;
 int ath6kl_wmi_beginscan_cmd (int ,int ,int ,int,int,int ,int ,size_t,int *,int ,int ) ;
 int ath6kl_wmi_bssfilter_cmd (int ,int ,int ,int ) ;
 int ath6kl_wmi_set_appie_cmd (int ,int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int * kcalloc (size_t,int,int ) ;
 int kfree (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_cfg80211_scan(struct wiphy *wiphy,
    struct cfg80211_scan_request *request)
{
 struct ath6kl_vif *vif = ath6kl_vif_from_wdev(request->wdev);
 struct ath6kl *ar = ath6kl_priv(vif->ndev);
 s8 n_channels = 0;
 u16 *channels = ((void*)0);
 int ret = 0;
 u32 force_fg_scan = 0;

 if (!ath6kl_cfg80211_ready(vif))
  return -EIO;

 ath6kl_cfg80211_sscan_disable(vif);

 if (!ar->usr_bss_filter) {
  clear_bit(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
  ret = ath6kl_wmi_bssfilter_cmd(ar->wmi, vif->fw_vif_idx,
            ALL_BSS_FILTER, 0);
  if (ret) {
   ath6kl_err("couldn't set bss filtering\n");
   return ret;
  }
 }

 ret = ath6kl_set_probed_ssids(ar, vif, request->ssids,
          request->n_ssids, ((void*)0), 0);
 if (ret < 0)
  return ret;


 ret = ath6kl_wmi_set_appie_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_FRAME_PROBE_REQ,
           request->ie, request->ie_len);
 if (ret) {
  ath6kl_err("failed to set Probe Request appie for scan\n");
  return ret;
 }






 if (request->n_channels > 0 &&
     request->n_channels <= WMI_MAX_CHANNELS) {
  u8 i;

  n_channels = request->n_channels;

  channels = kcalloc(n_channels, sizeof(u16), GFP_KERNEL);
  if (channels == ((void*)0)) {
   ath6kl_warn("failed to set scan channels, scan all channels");
   n_channels = 0;
  }

  for (i = 0; i < n_channels; i++)
   channels[i] = request->channels[i]->center_freq;
 }

 if (test_bit(CONNECTED, &vif->flags))
  force_fg_scan = 1;

 vif->scan_req = request;

 ret = ath6kl_wmi_beginscan_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_LONG_SCAN, force_fg_scan,
           0, 0,
           ATH6KL_FG_SCAN_INTERVAL,
           n_channels, channels,
           request->no_cck,
           request->rates);
 if (ret) {
  ath6kl_err("failed to start scan: %d\n", ret);
  vif->scan_req = ((void*)0);
 }

 kfree(channels);

 return ret;
}
