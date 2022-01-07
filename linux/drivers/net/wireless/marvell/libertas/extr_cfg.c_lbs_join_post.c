
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lbs_private {int dev; int tx_pending_len; int connect_status; TYPE_1__* wdev; } ;
struct TYPE_6__ {TYPE_3__* chan; } ;
struct cfg80211_ibss_params {TYPE_2__ chandef; int beacon_interval; int ssid_len; int ssid; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_7__ {int hw_value; } ;
struct TYPE_5__ {int wiphy; } ;


 int CFG80211_BSS_FTYPE_UNKNOWN ;
 int GFP_KERNEL ;
 int IEEE80211_MAX_SSID_LEN ;
 int LBS_CONNECTED ;
 int LBS_DEB_CFG80211 ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_IBSS_PARAMS ;
 int WLAN_EID_SSID ;
 int WLAN_EID_SUPP_RATES ;
 int cfg80211_ibss_joined (int ,int *,TYPE_3__*,int ) ;
 struct cfg80211_bss* cfg80211_inform_bss (int ,TYPE_3__*,int ,int *,int ,int ,int ,int *,int,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int lbs_deb_hex (int ,char*,int *,int) ;
 int memcpy (int *,int ,int ) ;
 int netif_carrier_on (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void lbs_join_post(struct lbs_private *priv,
     struct cfg80211_ibss_params *params,
     u8 *bssid, u16 capability)
{
 u8 fake_ie[2 + IEEE80211_MAX_SSID_LEN +
     2 + 4 +
     2 + 1 +
     2 + 2 +
     2 + 8];
 u8 *fake = fake_ie;
 struct cfg80211_bss *bss;







 *fake++ = WLAN_EID_SSID;
 *fake++ = params->ssid_len;
 memcpy(fake, params->ssid, params->ssid_len);
 fake += params->ssid_len;

 *fake++ = WLAN_EID_SUPP_RATES;
 *fake++ = 4;
 *fake++ = 0x82;
 *fake++ = 0x84;
 *fake++ = 0x8b;
 *fake++ = 0x96;

 *fake++ = WLAN_EID_DS_PARAMS;
 *fake++ = 1;
 *fake++ = params->chandef.chan->hw_value;

 *fake++ = WLAN_EID_IBSS_PARAMS;
 *fake++ = 2;
 *fake++ = 0;
 *fake++ = 0;


 *fake++ = WLAN_EID_EXT_SUPP_RATES;
 *fake++ = 8;
 *fake++ = 0x0c;
 *fake++ = 0x12;
 *fake++ = 0x18;
 *fake++ = 0x24;
 *fake++ = 0x30;
 *fake++ = 0x48;
 *fake++ = 0x60;
 *fake++ = 0x6c;
 lbs_deb_hex(LBS_DEB_CFG80211, "IE", fake_ie, fake - fake_ie);

 bss = cfg80211_inform_bss(priv->wdev->wiphy,
      params->chandef.chan,
      CFG80211_BSS_FTYPE_UNKNOWN,
      bssid,
      0,
      capability,
      params->beacon_interval,
      fake_ie, fake - fake_ie,
      0, GFP_KERNEL);
 cfg80211_put_bss(priv->wdev->wiphy, bss);

 cfg80211_ibss_joined(priv->dev, bssid, params->chandef.chan,
        GFP_KERNEL);


 priv->connect_status = LBS_CONNECTED;
 netif_carrier_on(priv->dev);
 if (!priv->tx_pending_len)
  netif_wake_queue(priv->dev);
}
