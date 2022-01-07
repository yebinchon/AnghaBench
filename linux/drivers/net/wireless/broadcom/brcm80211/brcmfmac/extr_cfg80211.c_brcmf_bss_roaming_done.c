
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct net_device {int dummy; } ;
struct ieee80211_supported_band {int band; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_roam_info {int resp_ie_len; int resp_ie; int req_ie_len; int req_ie; int bssid; struct ieee80211_channel* channel; } ;
struct brcmu_chan {scalar_t__ band; int control_ch_num; int chspec; } ;
struct brcmf_if {TYPE_2__* vif; } ;
struct brcmf_event_msg {int addr; } ;
struct brcmf_cfg80211_profile {int bssid; } ;
struct TYPE_3__ {int (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_1__ d11inf; } ;
struct brcmf_cfg80211_connect_info {int resp_ie_len; int resp_ie; int req_ie_len; int req_ie; } ;
struct brcmf_bss_info_le {int chanspec; } ;
typedef int s32 ;
typedef int __le32 ;
struct TYPE_4__ {int sme_state; struct brcmf_cfg80211_profile profile; } ;


 int BRCMF_C_GET_BSS_INFO ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 scalar_t__ BRCMU_CHAN_BAND_2G ;
 int CONN ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int TRACE ;
 int WL_BSS_INFO_MAX ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fil_cmd_data_get (struct brcmf_if*,int ,int *,int ) ;
 int brcmf_get_assoc_ies (struct brcmf_cfg80211_info*,struct brcmf_if*) ;
 int brcmf_update_bss_info (struct brcmf_cfg80211_info*,struct brcmf_if*) ;
 int cfg80211_roamed (struct net_device*,struct cfg80211_roam_info*,int ) ;
 struct brcmf_cfg80211_connect_info* cfg_to_conn (struct brcmf_cfg80211_info*) ;
 struct wiphy* cfg_to_wiphy (struct brcmf_cfg80211_info*) ;
 int cpu_to_le32 (int ) ;
 int ieee80211_channel_to_frequency (int ,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct brcmu_chan*) ;

__attribute__((used)) static s32
brcmf_bss_roaming_done(struct brcmf_cfg80211_info *cfg,
         struct net_device *ndev,
         const struct brcmf_event_msg *e)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
 struct brcmf_cfg80211_connect_info *conn_info = cfg_to_conn(cfg);
 struct wiphy *wiphy = cfg_to_wiphy(cfg);
 struct ieee80211_channel *notify_channel = ((void*)0);
 struct ieee80211_supported_band *band;
 struct brcmf_bss_info_le *bi;
 struct brcmu_chan ch;
 struct cfg80211_roam_info roam_info = {};
 u32 freq;
 s32 err = 0;
 u8 *buf;

 brcmf_dbg(TRACE, "Enter\n");

 brcmf_get_assoc_ies(cfg, ifp);
 memcpy(profile->bssid, e->addr, ETH_ALEN);
 brcmf_update_bss_info(cfg, ifp);

 buf = kzalloc(WL_BSS_INFO_MAX, GFP_KERNEL);
 if (buf == ((void*)0)) {
  err = -ENOMEM;
  goto done;
 }


 *(__le32 *)buf = cpu_to_le32(WL_BSS_INFO_MAX);
 err = brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_BSS_INFO,
         buf, WL_BSS_INFO_MAX);

 if (err)
  goto done;

 bi = (struct brcmf_bss_info_le *)(buf + 4);
 ch.chspec = le16_to_cpu(bi->chanspec);
 cfg->d11inf.decchspec(&ch);

 if (ch.band == BRCMU_CHAN_BAND_2G)
  band = wiphy->bands[NL80211_BAND_2GHZ];
 else
  band = wiphy->bands[NL80211_BAND_5GHZ];

 freq = ieee80211_channel_to_frequency(ch.control_ch_num, band->band);
 notify_channel = ieee80211_get_channel(wiphy, freq);

done:
 kfree(buf);

 roam_info.channel = notify_channel;
 roam_info.bssid = profile->bssid;
 roam_info.req_ie = conn_info->req_ie;
 roam_info.req_ie_len = conn_info->req_ie_len;
 roam_info.resp_ie = conn_info->resp_ie;
 roam_info.resp_ie_len = conn_info->resp_ie_len;

 cfg80211_roamed(ndev, &roam_info, GFP_KERNEL);
 brcmf_dbg(CONN, "Report roaming result\n");

 set_bit(BRCMF_VIF_STATUS_CONNECTED, &ifp->vif->sme_state);
 brcmf_dbg(TRACE, "Exit\n");
 return err;
}
