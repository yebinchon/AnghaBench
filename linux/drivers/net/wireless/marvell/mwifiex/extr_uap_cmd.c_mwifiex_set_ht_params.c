
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int ampdu_params_info; int cap_info; } ;
struct mwifiex_uap_bss_param {TYPE_3__ ht_cap; } ;
struct mwifiex_private {int ap_11n_enabled; TYPE_2__* adapter; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct TYPE_5__ {int tail_len; int tail; } ;
struct cfg80211_ap_settings {TYPE_1__ beacon; } ;
struct TYPE_6__ {int fw_cap_info; } ;


 int ISSUPP_11NENABLED (int ) ;
 int MWIFIEX_DEF_AMPDU ;
 int MWIFIEX_DEF_HT_CAP ;
 int WLAN_EID_HT_CAPABILITY ;
 int * cfg80211_find_ie (int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 int memcpy (TYPE_3__*,int const*,int) ;
 int memset (TYPE_3__*,int ,int) ;

void
mwifiex_set_ht_params(struct mwifiex_private *priv,
        struct mwifiex_uap_bss_param *bss_cfg,
        struct cfg80211_ap_settings *params)
{
 const u8 *ht_ie;

 if (!ISSUPP_11NENABLED(priv->adapter->fw_cap_info))
  return;

 ht_ie = cfg80211_find_ie(WLAN_EID_HT_CAPABILITY, params->beacon.tail,
     params->beacon.tail_len);
 if (ht_ie) {
  memcpy(&bss_cfg->ht_cap, ht_ie + 2,
         sizeof(struct ieee80211_ht_cap));
  priv->ap_11n_enabled = 1;
 } else {
  memset(&bss_cfg->ht_cap, 0, sizeof(struct ieee80211_ht_cap));
  bss_cfg->ht_cap.cap_info = cpu_to_le16(MWIFIEX_DEF_HT_CAP);
  bss_cfg->ht_cap.ampdu_params_info = MWIFIEX_DEF_AMPDU;
 }

 return;
}
