
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct orinoco_private {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct agere_ext_scan_info {int* data; int bssid; int level; int beacon_interval; int capabilities; int timestamp; } ;
typedef int s32 ;


 int CFG80211_BSS_FTYPE_UNKNOWN ;
 int GFP_KERNEL ;
 int NL80211_BAND_2GHZ ;
 int SIGNAL_TO_MBM (int ) ;
 int WLAN_EID_DS_PARAMS ;
 int* cfg80211_find_ie (int ,int*,size_t) ;
 struct cfg80211_bss* cfg80211_inform_bss (struct wiphy*,struct ieee80211_channel*,int ,int ,int ,int ,int ,int const*,size_t,int ,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct wiphy* priv_to_wiphy (struct orinoco_private*) ;

void orinoco_add_extscan_result(struct orinoco_private *priv,
    struct agere_ext_scan_info *bss,
    size_t len)
{
 struct wiphy *wiphy = priv_to_wiphy(priv);
 struct ieee80211_channel *channel;
 struct cfg80211_bss *cbss;
 const u8 *ie;
 u64 timestamp;
 s32 signal;
 u16 capability;
 u16 beacon_interval;
 size_t ie_len;
 int chan, freq;

 ie_len = len - sizeof(*bss);
 ie = cfg80211_find_ie(WLAN_EID_DS_PARAMS, bss->data, ie_len);
 chan = ie ? ie[2] : 0;
 freq = ieee80211_channel_to_frequency(chan, NL80211_BAND_2GHZ);
 channel = ieee80211_get_channel(wiphy, freq);

 timestamp = le64_to_cpu(bss->timestamp);
 capability = le16_to_cpu(bss->capabilities);
 beacon_interval = le16_to_cpu(bss->beacon_interval);
 ie = bss->data;
 signal = SIGNAL_TO_MBM(bss->level);

 cbss = cfg80211_inform_bss(wiphy, channel, CFG80211_BSS_FTYPE_UNKNOWN,
       bss->bssid, timestamp, capability,
       beacon_interval, ie, ie_len, signal,
       GFP_KERNEL);
 cfg80211_put_bss(wiphy, cbss);
}
