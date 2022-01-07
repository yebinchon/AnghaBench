
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {TYPE_1__ vht_mcs; } ;





 int IWL_TLC_MNG_HT_RATE_MCS7 ;
 int IWL_TLC_MNG_HT_RATE_MCS8 ;
 int IWL_TLC_MNG_HT_RATE_MCS9 ;
 int WARN_ON_ONCE (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static
int rs_fw_vht_highest_rx_mcs_index(const struct ieee80211_sta_vht_cap *vht_cap,
       int nss)
{
 u16 rx_mcs = le16_to_cpu(vht_cap->vht_mcs.rx_mcs_map) &
  (0x3 << (2 * (nss - 1)));
 rx_mcs >>= (2 * (nss - 1));

 switch (rx_mcs) {
 case 130:
  return IWL_TLC_MNG_HT_RATE_MCS7;
 case 129:
  return IWL_TLC_MNG_HT_RATE_MCS8;
 case 128:
  return IWL_TLC_MNG_HT_RATE_MCS9;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return 0;
}
