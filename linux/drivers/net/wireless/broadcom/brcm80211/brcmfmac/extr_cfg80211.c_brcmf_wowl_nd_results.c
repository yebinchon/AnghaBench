
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct brcmf_pub {struct brcmf_cfg80211_info* config; } ;
struct brcmf_pno_scanresults_le {int count; } ;
struct brcmf_pno_net_info_le {scalar_t__ SSID_len; scalar_t__ channel; int SSID; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_event_msg {int datalen; scalar_t__ event_code; } ;
struct TYPE_8__ {int nd_data_completed; int nd_data_wait; TYPE_3__* nd; TYPE_2__* nd_info; } ;
struct brcmf_cfg80211_info {TYPE_4__ wowl; } ;
typedef int s32 ;
struct TYPE_5__ {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_7__ {int n_channels; int * channels; TYPE_1__ ssid; } ;
struct TYPE_6__ {int n_matches; TYPE_3__** matches; } ;


 scalar_t__ BRCMF_E_PFN_NET_LOST ;
 scalar_t__ CH_MAX_2G_CHANNEL ;
 int EINVAL ;
 scalar_t__ IEEE80211_MAX_SSID_LEN ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int SCAN ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_pno_net_info_le* brcmf_get_netinfo_array (struct brcmf_pno_scanresults_le*) ;
 int ieee80211_channel_to_frequency (scalar_t__,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static s32
brcmf_wowl_nd_results(struct brcmf_if *ifp, const struct brcmf_event_msg *e,
        void *data)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_cfg80211_info *cfg = drvr->config;
 struct brcmf_pno_scanresults_le *pfn_result;
 struct brcmf_pno_net_info_le *netinfo;

 brcmf_dbg(SCAN, "Enter\n");

 if (e->datalen < (sizeof(*pfn_result) + sizeof(*netinfo))) {
  brcmf_dbg(SCAN, "Event data to small. Ignore\n");
  return 0;
 }

 pfn_result = (struct brcmf_pno_scanresults_le *)data;

 if (e->event_code == BRCMF_E_PFN_NET_LOST) {
  brcmf_dbg(SCAN, "PFN NET LOST event. Ignore\n");
  return 0;
 }

 if (le32_to_cpu(pfn_result->count) < 1) {
  bphy_err(drvr, "Invalid result count, expected 1 (%d)\n",
    le32_to_cpu(pfn_result->count));
  return -EINVAL;
 }

 netinfo = brcmf_get_netinfo_array(pfn_result);
 if (netinfo->SSID_len > IEEE80211_MAX_SSID_LEN)
  netinfo->SSID_len = IEEE80211_MAX_SSID_LEN;
 memcpy(cfg->wowl.nd->ssid.ssid, netinfo->SSID, netinfo->SSID_len);
 cfg->wowl.nd->ssid.ssid_len = netinfo->SSID_len;
 cfg->wowl.nd->n_channels = 1;
 cfg->wowl.nd->channels[0] =
  ieee80211_channel_to_frequency(netinfo->channel,
   netinfo->channel <= CH_MAX_2G_CHANNEL ?
     NL80211_BAND_2GHZ : NL80211_BAND_5GHZ);
 cfg->wowl.nd_info->n_matches = 1;
 cfg->wowl.nd_info->matches[0] = cfg->wowl.nd;


 cfg->wowl.nd_data_completed = 1;
 wake_up(&cfg->wowl.nd_data_wait);

 return 0;
}
