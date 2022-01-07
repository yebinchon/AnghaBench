
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_5__ {int band; } ;
struct mwifiex_private {int cfg_bssid; TYPE_3__ wdev; TYPE_2__ curr_bss_params; } ;
struct TYPE_4__ {int ssid_len; int ssid; } ;
struct mwifiex_bss_info {int bssid; int bss_chan; TYPE_1__ ssid; } ;
struct ieee_types_header {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int CFG80211_BSS_FTYPE_UNKNOWN ;
 int GFP_KERNEL ;
 int IEEE80211_MAX_SSID_LEN ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_EID_SSID ;
 struct cfg80211_bss* cfg80211_inform_bss (int ,struct ieee80211_channel*,int ,int ,int ,int ,int ,int*,int,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int ether_addr_copy (int ,int ) ;
 int ieee80211_channel_to_frequency (int ,int) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 int memcpy (int*,int *,int) ;
 int mwifiex_band_to_radio_type (int ) ;
 scalar_t__ mwifiex_get_bss_info (struct mwifiex_private*,struct mwifiex_bss_info*) ;

__attribute__((used)) static int mwifiex_cfg80211_inform_ibss_bss(struct mwifiex_private *priv)
{
 struct ieee80211_channel *chan;
 struct mwifiex_bss_info bss_info;
 struct cfg80211_bss *bss;
 int ie_len;
 u8 ie_buf[IEEE80211_MAX_SSID_LEN + sizeof(struct ieee_types_header)];
 enum nl80211_band band;

 if (mwifiex_get_bss_info(priv, &bss_info))
  return -1;

 ie_buf[0] = WLAN_EID_SSID;
 ie_buf[1] = bss_info.ssid.ssid_len;

 memcpy(&ie_buf[sizeof(struct ieee_types_header)],
        &bss_info.ssid.ssid, bss_info.ssid.ssid_len);
 ie_len = ie_buf[1] + sizeof(struct ieee_types_header);

 band = mwifiex_band_to_radio_type(priv->curr_bss_params.band);
 chan = ieee80211_get_channel(priv->wdev.wiphy,
   ieee80211_channel_to_frequency(bss_info.bss_chan,
             band));

 bss = cfg80211_inform_bss(priv->wdev.wiphy, chan,
      CFG80211_BSS_FTYPE_UNKNOWN,
      bss_info.bssid, 0, WLAN_CAPABILITY_IBSS,
      0, ie_buf, ie_len, 0, GFP_KERNEL);
 if (bss) {
  cfg80211_put_bss(priv->wdev.wiphy, bss);
  ether_addr_copy(priv->cfg_bssid, bss_info.bssid);
 }

 return 0;
}
