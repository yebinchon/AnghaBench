
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct net_device {int dummy; } ;
struct ieee80211_supported_band {int band; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct brcmu_chan {int chspec; scalar_t__ band; int control_ch_num; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {int (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {int channel; TYPE_1__ d11inf; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int RSSI; int ie_length; int ie_offset; int beacon_period; int capability; int chanspec; } ;
typedef int s32 ;
typedef int s16 ;
typedef int __le32 ;


 int BRCMF_C_GET_BSS_INFO ;
 scalar_t__ BRCMU_CHAN_BAND_2G ;
 int CFG80211_BSS_FTYPE_UNKNOWN ;
 int CONN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int TRACE ;
 int WL_BSS_INFO_MAX ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_cmd_data_get (int ,int ,int *,int ) ;
 struct cfg80211_bss* cfg80211_inform_bss (struct wiphy*,struct ieee80211_channel*,int ,int const*,int ,int,int,int *,size_t,int,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 struct wiphy* cfg_to_wiphy (struct brcmf_cfg80211_info*) ;
 int cpu_to_le32 (int ) ;
 int ieee80211_channel_to_frequency (int ,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int netdev_priv (struct net_device*) ;
 int stub1 (struct brcmu_chan*) ;

__attribute__((used)) static s32 brcmf_inform_ibss(struct brcmf_cfg80211_info *cfg,
        struct net_device *ndev, const u8 *bssid)
{
 struct wiphy *wiphy = cfg_to_wiphy(cfg);
 struct brcmf_pub *drvr = cfg->pub;
 struct ieee80211_channel *notify_channel;
 struct brcmf_bss_info_le *bi = ((void*)0);
 struct ieee80211_supported_band *band;
 struct cfg80211_bss *bss;
 struct brcmu_chan ch;
 u8 *buf = ((void*)0);
 s32 err = 0;
 u32 freq;
 u16 notify_capability;
 u16 notify_interval;
 u8 *notify_ie;
 size_t notify_ielen;
 s32 notify_signal;

 brcmf_dbg(TRACE, "Enter\n");

 buf = kzalloc(WL_BSS_INFO_MAX, GFP_KERNEL);
 if (buf == ((void*)0)) {
  err = -ENOMEM;
  goto CleanUp;
 }

 *(__le32 *)buf = cpu_to_le32(WL_BSS_INFO_MAX);

 err = brcmf_fil_cmd_data_get(netdev_priv(ndev), BRCMF_C_GET_BSS_INFO,
         buf, WL_BSS_INFO_MAX);
 if (err) {
  bphy_err(drvr, "WLC_GET_BSS_INFO failed: %d\n", err);
  goto CleanUp;
 }

 bi = (struct brcmf_bss_info_le *)(buf + 4);

 ch.chspec = le16_to_cpu(bi->chanspec);
 cfg->d11inf.decchspec(&ch);

 if (ch.band == BRCMU_CHAN_BAND_2G)
  band = wiphy->bands[NL80211_BAND_2GHZ];
 else
  band = wiphy->bands[NL80211_BAND_5GHZ];

 freq = ieee80211_channel_to_frequency(ch.control_ch_num, band->band);
 cfg->channel = freq;
 notify_channel = ieee80211_get_channel(wiphy, freq);

 notify_capability = le16_to_cpu(bi->capability);
 notify_interval = le16_to_cpu(bi->beacon_period);
 notify_ie = (u8 *)bi + le16_to_cpu(bi->ie_offset);
 notify_ielen = le32_to_cpu(bi->ie_length);
 notify_signal = (s16)le16_to_cpu(bi->RSSI) * 100;

 brcmf_dbg(CONN, "channel: %d(%d)\n", ch.control_ch_num, freq);
 brcmf_dbg(CONN, "capability: %X\n", notify_capability);
 brcmf_dbg(CONN, "beacon interval: %d\n", notify_interval);
 brcmf_dbg(CONN, "signal: %d\n", notify_signal);

 bss = cfg80211_inform_bss(wiphy, notify_channel,
      CFG80211_BSS_FTYPE_UNKNOWN, bssid, 0,
      notify_capability, notify_interval,
      notify_ie, notify_ielen, notify_signal,
      GFP_KERNEL);

 if (!bss) {
  err = -ENOMEM;
  goto CleanUp;
 }

 cfg80211_put_bss(wiphy, bss);

CleanUp:

 kfree(buf);

 brcmf_dbg(TRACE, "Exit\n");

 return err;
}
