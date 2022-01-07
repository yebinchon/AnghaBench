
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_start_sched_scan_cmd {int num_of_ssids; struct wmi_sched_scan_ssid_match* ssid_for_match; } ;
struct wmi_sched_scan_ssid_match {scalar_t__ ssid_len; scalar_t__ rssi_threshold; int add_ssid_to_probe; int ssid; } ;
struct wil6210_priv {int dummy; } ;
struct cfg80211_ssid {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_2__ {scalar_t__ ssid_len; int ssid; } ;
struct cfg80211_match_set {scalar_t__ rssi_thold; TYPE_1__ ssid; } ;


 scalar_t__ S8_MAX ;
 scalar_t__ S8_MIN ;
 int WMI_MAX_PNO_SSID_NUM ;
 int WMI_MAX_SSID_LEN ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int min_t (int ,scalar_t__,int ) ;
 int u8 ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int,int) ;

__attribute__((used)) static void
wmi_sched_scan_set_ssids(struct wil6210_priv *wil,
    struct wmi_start_sched_scan_cmd *cmd,
    struct cfg80211_ssid *ssids, int n_ssids,
    struct cfg80211_match_set *match_sets,
    int n_match_sets)
{
 int i;

 if (n_match_sets > WMI_MAX_PNO_SSID_NUM) {
  wil_dbg_wmi(wil, "too many match sets (%d), use first %d\n",
       n_match_sets, WMI_MAX_PNO_SSID_NUM);
  n_match_sets = WMI_MAX_PNO_SSID_NUM;
 }
 cmd->num_of_ssids = n_match_sets;

 for (i = 0; i < n_match_sets; i++) {
  struct wmi_sched_scan_ssid_match *wmi_match =
   &cmd->ssid_for_match[i];
  struct cfg80211_match_set *cfg_match = &match_sets[i];
  int j;

  wmi_match->ssid_len = cfg_match->ssid.ssid_len;
  memcpy(wmi_match->ssid, cfg_match->ssid.ssid,
         min_t(u8, wmi_match->ssid_len, WMI_MAX_SSID_LEN));
  wmi_match->rssi_threshold = S8_MIN;
  if (cfg_match->rssi_thold >= S8_MIN &&
      cfg_match->rssi_thold <= S8_MAX)
   wmi_match->rssi_threshold = cfg_match->rssi_thold;

  for (j = 0; j < n_ssids; j++)
   if (wmi_match->ssid_len == ssids[j].ssid_len &&
       memcmp(wmi_match->ssid, ssids[j].ssid,
       wmi_match->ssid_len) == 0)
    wmi_match->add_ssid_to_probe = 1;
 }
}
