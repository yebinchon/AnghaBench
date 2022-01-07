
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sta {int bandwidth; } ;






 int IWL_TLC_MNG_CH_WIDTH_160MHZ ;
 int IWL_TLC_MNG_CH_WIDTH_20MHZ ;
 int IWL_TLC_MNG_CH_WIDTH_40MHZ ;
 int IWL_TLC_MNG_CH_WIDTH_80MHZ ;

__attribute__((used)) static u8 rs_fw_bw_from_sta_bw(struct ieee80211_sta *sta)
{
 switch (sta->bandwidth) {
 case 131:
  return IWL_TLC_MNG_CH_WIDTH_160MHZ;
 case 128:
  return IWL_TLC_MNG_CH_WIDTH_80MHZ;
 case 129:
  return IWL_TLC_MNG_CH_WIDTH_40MHZ;
 case 130:
 default:
  return IWL_TLC_MNG_CH_WIDTH_20MHZ;
 }
}
