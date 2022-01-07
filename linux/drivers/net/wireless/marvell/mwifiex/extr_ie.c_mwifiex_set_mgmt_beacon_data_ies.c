
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct mwifiex_private {void* assocresp_idx; void* proberesp_idx; void* beacon_idx; } ;
struct mwifiex_ie {int dummy; } ;
struct cfg80211_beacon_data {scalar_t__ assocresp_ies_len; scalar_t__ assocresp_ies; scalar_t__ proberesp_ies_len; scalar_t__ proberesp_ies; scalar_t__ beacon_ies_len; scalar_t__ beacon_ies; } ;


 int MGMT_MASK_ASSOC_RESP ;
 int MGMT_MASK_BEACON ;
 int MGMT_MASK_PROBE_RESP ;
 int MGMT_MASK_REASSOC_RESP ;
 void* MWIFIEX_AUTO_IDX_MASK ;
 int WLAN_OUI_MICROSOFT ;
 int WLAN_OUI_TYPE_MICROSOFT_WPS ;
 int WLAN_OUI_TYPE_WFA_P2P ;
 int WLAN_OUI_WFA ;
 int kfree (struct mwifiex_ie*) ;
 int mwifiex_update_uap_custom_ie (struct mwifiex_private*,struct mwifiex_ie*,void**,struct mwifiex_ie*,void**,struct mwifiex_ie*,void**) ;
 int mwifiex_update_vs_ie (scalar_t__,scalar_t__,struct mwifiex_ie**,int,int ,int ) ;

__attribute__((used)) static int mwifiex_set_mgmt_beacon_data_ies(struct mwifiex_private *priv,
         struct cfg80211_beacon_data *data)
{
 struct mwifiex_ie *beacon_ie = ((void*)0), *pr_ie = ((void*)0), *ar_ie = ((void*)0);
 u16 beacon_idx = MWIFIEX_AUTO_IDX_MASK, pr_idx = MWIFIEX_AUTO_IDX_MASK;
 u16 ar_idx = MWIFIEX_AUTO_IDX_MASK;
 int ret = 0;

 if (data->beacon_ies && data->beacon_ies_len) {
  mwifiex_update_vs_ie(data->beacon_ies, data->beacon_ies_len,
         &beacon_ie, MGMT_MASK_BEACON,
         WLAN_OUI_MICROSOFT,
         WLAN_OUI_TYPE_MICROSOFT_WPS);
  mwifiex_update_vs_ie(data->beacon_ies, data->beacon_ies_len,
         &beacon_ie, MGMT_MASK_BEACON,
         WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P);
 }

 if (data->proberesp_ies && data->proberesp_ies_len) {
  mwifiex_update_vs_ie(data->proberesp_ies,
         data->proberesp_ies_len, &pr_ie,
         MGMT_MASK_PROBE_RESP, WLAN_OUI_MICROSOFT,
         WLAN_OUI_TYPE_MICROSOFT_WPS);
  mwifiex_update_vs_ie(data->proberesp_ies,
         data->proberesp_ies_len, &pr_ie,
         MGMT_MASK_PROBE_RESP,
         WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P);
 }

 if (data->assocresp_ies && data->assocresp_ies_len) {
  mwifiex_update_vs_ie(data->assocresp_ies,
         data->assocresp_ies_len, &ar_ie,
         MGMT_MASK_ASSOC_RESP |
         MGMT_MASK_REASSOC_RESP,
         WLAN_OUI_MICROSOFT,
         WLAN_OUI_TYPE_MICROSOFT_WPS);
  mwifiex_update_vs_ie(data->assocresp_ies,
         data->assocresp_ies_len, &ar_ie,
         MGMT_MASK_ASSOC_RESP |
         MGMT_MASK_REASSOC_RESP, WLAN_OUI_WFA,
         WLAN_OUI_TYPE_WFA_P2P);
 }

 if (beacon_ie || pr_ie || ar_ie) {
  ret = mwifiex_update_uap_custom_ie(priv, beacon_ie,
         &beacon_idx, pr_ie,
         &pr_idx, ar_ie, &ar_idx);
  if (ret)
   goto done;
 }

 priv->beacon_idx = beacon_idx;
 priv->proberesp_idx = pr_idx;
 priv->assocresp_idx = ar_idx;

done:
 kfree(beacon_ie);
 kfree(pr_ie);
 kfree(ar_ie);

 return ret;
}
