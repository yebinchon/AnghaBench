
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE80211_HT_PARAM_CHA_SEC_ABOVE ;
 int IEEE80211_HT_PARAM_CHA_SEC_BELOW ;
 int IEEE80211_HT_PARAM_CHA_SEC_NONE ;

u8 mwifiex_get_sec_chan_offset(int chan)
{
 u8 sec_offset;

 switch (chan) {
 case 36:
 case 44:
 case 52:
 case 60:
 case 100:
 case 108:
 case 116:
 case 124:
 case 132:
 case 140:
 case 149:
 case 157:
  sec_offset = IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
  break;
 case 40:
 case 48:
 case 56:
 case 64:
 case 104:
 case 112:
 case 120:
 case 128:
 case 136:
 case 144:
 case 153:
 case 161:
  sec_offset = IEEE80211_HT_PARAM_CHA_SEC_BELOW;
  break;
 case 165:
 default:
  sec_offset = IEEE80211_HT_PARAM_CHA_SEC_NONE;
  break;
 }

 return sec_offset;
}
