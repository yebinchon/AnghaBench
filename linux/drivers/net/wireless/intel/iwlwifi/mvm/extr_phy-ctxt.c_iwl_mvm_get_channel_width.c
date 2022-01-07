
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_chan_def {int width; } ;







 int PHY_VHT_CHANNEL_MODE160 ;
 int PHY_VHT_CHANNEL_MODE20 ;
 int PHY_VHT_CHANNEL_MODE40 ;
 int PHY_VHT_CHANNEL_MODE80 ;
 int WARN (int,char*,int) ;

u8 iwl_mvm_get_channel_width(struct cfg80211_chan_def *chandef)
{
 switch (chandef->width) {
 case 130:
 case 131:
  return PHY_VHT_CHANNEL_MODE20;
 case 129:
  return PHY_VHT_CHANNEL_MODE40;
 case 128:
  return PHY_VHT_CHANNEL_MODE80;
 case 132:
  return PHY_VHT_CHANNEL_MODE160;
 default:
  WARN(1, "Invalid channel width=%u", chandef->width);
  return PHY_VHT_CHANNEL_MODE20;
 }
}
