
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int usr_dot_11ac_dev_cap_bg; int usr_dot_11ac_dev_cap_a; } ;


 int BAND_AAC ;
 scalar_t__ GET_VHTCAP_CHWDSET (int ) ;
 int GET_VHTNSSMCS (scalar_t__,int) ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 scalar_t__** max_rate_lgi_160MHZ ;
 scalar_t__** max_rate_lgi_80MHZ ;

__attribute__((used)) static u16
mwifiex_convert_mcsmap_to_maxrate(struct mwifiex_private *priv,
      u8 bands, u16 mcs_map)
{
 u8 i, nss, mcs;
 u16 max_rate = 0;
 u32 usr_vht_cap_info = 0;
 struct mwifiex_adapter *adapter = priv->adapter;

 if (bands & BAND_AAC)
  usr_vht_cap_info = adapter->usr_dot_11ac_dev_cap_a;
 else
  usr_vht_cap_info = adapter->usr_dot_11ac_dev_cap_bg;


 nss = 1;
 for (i = 1; i <= 8; i++) {
  mcs = GET_VHTNSSMCS(mcs_map, i);
  if (mcs < IEEE80211_VHT_MCS_NOT_SUPPORTED)
   nss = i;
 }
 mcs = GET_VHTNSSMCS(mcs_map, nss);


 if (mcs == IEEE80211_VHT_MCS_NOT_SUPPORTED)
  mcs = IEEE80211_VHT_MCS_SUPPORT_0_9;

 if (GET_VHTCAP_CHWDSET(usr_vht_cap_info)) {

  max_rate = max_rate_lgi_160MHZ[nss - 1][mcs];
  if (!max_rate)

   max_rate = max_rate_lgi_160MHZ[nss - 1][mcs - 1];
 } else {
  max_rate = max_rate_lgi_80MHZ[nss - 1][mcs];
  if (!max_rate)

   max_rate = max_rate_lgi_80MHZ[nss - 1][mcs - 1];
 }

 return max_rate;
}
