
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int IEEE80211_HT_PARAM_CHA_SEC_ABOVE ;
 int IEEE80211_HT_PARAM_CHA_SEC_BELOW ;
 int IEEE80211_HT_PARAM_CHA_SEC_NONE ;





u8 mwifiex_chan_type_to_sec_chan_offset(enum nl80211_channel_type chan_type)
{
 switch (chan_type) {
 case 128:
 case 131:
  return IEEE80211_HT_PARAM_CHA_SEC_NONE;
 case 129:
  return IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
 case 130:
  return IEEE80211_HT_PARAM_CHA_SEC_BELOW;
 default:
  return IEEE80211_HT_PARAM_CHA_SEC_NONE;
 }
}
