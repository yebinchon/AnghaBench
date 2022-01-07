
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int usr_dot_11ac_mcs_support; } ;
struct TYPE_2__ {void* tx_highest; void* tx_mcs_map; void* rx_highest; void* rx_mcs_map; } ;
struct ieee80211_vht_cap {TYPE_1__ supp_mcs; } ;


 int GET_DEVRXMCSMAP (int ) ;
 int GET_DEVTXMCSMAP (int ) ;
 int GET_VHTNSSMCS (int,int) ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int SET_VHTNSSMCS (int,int,int) ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int min (int,int) ;
 int mwifiex_convert_mcsmap_to_maxrate (struct mwifiex_private*,int ,int) ;
 int mwifiex_fill_vht_cap_info (struct mwifiex_private*,struct ieee80211_vht_cap*,int ) ;

void mwifiex_fill_vht_cap_tlv(struct mwifiex_private *priv,
         struct ieee80211_vht_cap *vht_cap, u8 bands)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 u16 mcs_map_user, mcs_map_resp, mcs_map_result;
 u16 mcs_user, mcs_resp, nss, tmp;


 mwifiex_fill_vht_cap_info(priv, vht_cap, bands);


 mcs_map_user = GET_DEVRXMCSMAP(adapter->usr_dot_11ac_mcs_support);
 mcs_map_resp = le16_to_cpu(vht_cap->supp_mcs.rx_mcs_map);
 mcs_map_result = 0;

 for (nss = 1; nss <= 8; nss++) {
  mcs_user = GET_VHTNSSMCS(mcs_map_user, nss);
  mcs_resp = GET_VHTNSSMCS(mcs_map_resp, nss);

  if ((mcs_user == IEEE80211_VHT_MCS_NOT_SUPPORTED) ||
      (mcs_resp == IEEE80211_VHT_MCS_NOT_SUPPORTED))
   SET_VHTNSSMCS(mcs_map_result, nss,
          IEEE80211_VHT_MCS_NOT_SUPPORTED);
  else
   SET_VHTNSSMCS(mcs_map_result, nss,
          min(mcs_user, mcs_resp));
 }

 vht_cap->supp_mcs.rx_mcs_map = cpu_to_le16(mcs_map_result);

 tmp = mwifiex_convert_mcsmap_to_maxrate(priv, bands, mcs_map_result);
 vht_cap->supp_mcs.rx_highest = cpu_to_le16(tmp);


 mcs_map_user = GET_DEVTXMCSMAP(adapter->usr_dot_11ac_mcs_support);
 mcs_map_resp = le16_to_cpu(vht_cap->supp_mcs.tx_mcs_map);
 mcs_map_result = 0;

 for (nss = 1; nss <= 8; nss++) {
  mcs_user = GET_VHTNSSMCS(mcs_map_user, nss);
  mcs_resp = GET_VHTNSSMCS(mcs_map_resp, nss);
  if ((mcs_user == IEEE80211_VHT_MCS_NOT_SUPPORTED) ||
      (mcs_resp == IEEE80211_VHT_MCS_NOT_SUPPORTED))
   SET_VHTNSSMCS(mcs_map_result, nss,
          IEEE80211_VHT_MCS_NOT_SUPPORTED);
  else
   SET_VHTNSSMCS(mcs_map_result, nss,
          min(mcs_user, mcs_resp));
 }

 vht_cap->supp_mcs.tx_mcs_map = cpu_to_le16(mcs_map_result);

 tmp = mwifiex_convert_mcsmap_to_maxrate(priv, bands, mcs_map_result);
 vht_cap->supp_mcs.tx_highest = cpu_to_le16(tmp);

 return;
}
