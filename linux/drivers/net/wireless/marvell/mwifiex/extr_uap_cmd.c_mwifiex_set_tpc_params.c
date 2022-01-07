
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_uap_bss_param {int power_constraint; } ;
struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int tail_len; int tail; } ;
struct cfg80211_ap_settings {TYPE_1__ beacon; } ;


 int WLAN_EID_TPC_REQUEST ;
 int * cfg80211_find_ie (int ,int ,int ) ;

void mwifiex_set_tpc_params(struct mwifiex_private *priv,
       struct mwifiex_uap_bss_param *bss_cfg,
       struct cfg80211_ap_settings *params)
{
 const u8 *tpc_ie;

 tpc_ie = cfg80211_find_ie(WLAN_EID_TPC_REQUEST, params->beacon.tail,
      params->beacon.tail_len);
 if (tpc_ie)
  bss_cfg->power_constraint = *(tpc_ie + 2);
 else
  bss_cfg->power_constraint = 0;
}
