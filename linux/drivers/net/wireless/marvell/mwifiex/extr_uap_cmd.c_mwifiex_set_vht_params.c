
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_uap_bss_param {int vht_cap; } ;
struct mwifiex_private {int ap_11ac_enabled; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct TYPE_2__ {int tail_len; int tail; } ;
struct cfg80211_ap_settings {TYPE_1__ beacon; } ;


 int WLAN_EID_VHT_CAPABILITY ;
 int * cfg80211_find_ie (int ,int ,int ) ;
 int memcpy (int *,int const*,int) ;

void mwifiex_set_vht_params(struct mwifiex_private *priv,
       struct mwifiex_uap_bss_param *bss_cfg,
       struct cfg80211_ap_settings *params)
{
 const u8 *vht_ie;

 vht_ie = cfg80211_find_ie(WLAN_EID_VHT_CAPABILITY, params->beacon.tail,
      params->beacon.tail_len);
 if (vht_ie) {
  memcpy(&bss_cfg->vht_cap, vht_ie + 2,
         sizeof(struct ieee80211_vht_cap));
  priv->ap_11ac_enabled = 1;
 } else {
  priv->ap_11ac_enabled = 0;
 }

 return;
}
