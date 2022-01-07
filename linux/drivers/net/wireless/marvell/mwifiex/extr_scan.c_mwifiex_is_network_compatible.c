
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ session_enable; } ;
struct mwifiex_private {scalar_t__ bss_mode; struct mwifiex_adapter* adapter; TYPE_1__ wps; scalar_t__ media_connected; } ;
struct mwifiex_bssdescriptor {int disable_11n; scalar_t__ bss_mode; scalar_t__ bcn_ht_cap; scalar_t__ chan_sw_ie_present; } ;
struct mwifiex_adapter {int config_bands; } ;
typedef int s32 ;


 int BAND_AN ;
 int BAND_GN ;
 int CIPHER_SUITE_CCMP ;
 int CIPHER_SUITE_TKIP ;
 int ERROR ;
 int INFO ;
 int IOCTL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int dbg_security_flags (int ,char*,struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_is_bss_adhoc_aes (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_dynamic_wep (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_no_sec (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_static_wep (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_wapi (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_wpa (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_bss_wpa2 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ mwifiex_is_rsn_oui_present (struct mwifiex_bssdescriptor*,int ) ;
 scalar_t__ mwifiex_is_wpa_oui_present (struct mwifiex_bssdescriptor*,int ) ;

__attribute__((used)) static s32
mwifiex_is_network_compatible(struct mwifiex_private *priv,
         struct mwifiex_bssdescriptor *bss_desc, u32 mode)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 bss_desc->disable_11n = 0;


 if (priv->media_connected &&
     (priv->bss_mode == NL80211_IFTYPE_STATION) &&
     (bss_desc->bss_mode == NL80211_IFTYPE_STATION))
  return 0;

 if (priv->wps.session_enable) {
  mwifiex_dbg(adapter, IOCTL,
       "info: return success directly in WPS period\n");
  return 0;
 }

 if (bss_desc->chan_sw_ie_present) {
  mwifiex_dbg(adapter, INFO,
       "Don't connect to AP with WLAN_EID_CHANNEL_SWITCH\n");
  return -1;
 }

 if (mwifiex_is_bss_wapi(priv, bss_desc)) {
  mwifiex_dbg(adapter, INFO,
       "info: return success for WAPI AP\n");
  return 0;
 }

 if (bss_desc->bss_mode == mode) {
  if (mwifiex_is_bss_no_sec(priv, bss_desc)) {

   return 0;
  } else if (mwifiex_is_bss_static_wep(priv, bss_desc)) {

   mwifiex_dbg(adapter, INFO,
        "info: Disable 11n in WEP mode.\n");
   bss_desc->disable_11n = 1;
   return 0;
  } else if (mwifiex_is_bss_wpa(priv, bss_desc)) {

   if (((priv->adapter->config_bands & BAND_GN ||
         priv->adapter->config_bands & BAND_AN) &&
        bss_desc->bcn_ht_cap) &&
       !mwifiex_is_wpa_oui_present(bss_desc,
        CIPHER_SUITE_CCMP)) {

    if (mwifiex_is_wpa_oui_present
      (bss_desc, CIPHER_SUITE_TKIP)) {
     mwifiex_dbg(adapter, INFO,
          "info: Disable 11n if AES\t"
          "is not supported by AP\n");
     bss_desc->disable_11n = 1;
    } else {
     return -1;
    }
   }
   return 0;
  } else if (mwifiex_is_bss_wpa2(priv, bss_desc)) {

   if (((priv->adapter->config_bands & BAND_GN ||
         priv->adapter->config_bands & BAND_AN) &&
        bss_desc->bcn_ht_cap) &&
       !mwifiex_is_rsn_oui_present(bss_desc,
       CIPHER_SUITE_CCMP)) {

    if (mwifiex_is_rsn_oui_present
      (bss_desc, CIPHER_SUITE_TKIP)) {
     mwifiex_dbg(adapter, INFO,
          "info: Disable 11n if AES\t"
          "is not supported by AP\n");
     bss_desc->disable_11n = 1;
    } else {
     return -1;
    }
   }
   return 0;
  } else if (mwifiex_is_bss_adhoc_aes(priv, bss_desc)) {

   return 0;
  } else if (mwifiex_is_bss_dynamic_wep(priv, bss_desc)) {

   return 0;
  }


  dbg_security_flags(ERROR, "failed", priv, bss_desc);
  return -1;
 }


 return -1;
}
