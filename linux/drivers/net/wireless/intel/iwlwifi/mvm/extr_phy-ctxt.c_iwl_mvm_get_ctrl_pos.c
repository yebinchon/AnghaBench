
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfg80211_chan_def {int center_freq1; TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;


 int PHY_VHT_CTRL_POS_1_ABOVE ;
 int PHY_VHT_CTRL_POS_1_BELOW ;
 int PHY_VHT_CTRL_POS_2_ABOVE ;
 int PHY_VHT_CTRL_POS_2_BELOW ;
 int PHY_VHT_CTRL_POS_3_ABOVE ;
 int PHY_VHT_CTRL_POS_3_BELOW ;
 int PHY_VHT_CTRL_POS_4_ABOVE ;
 int PHY_VHT_CTRL_POS_4_BELOW ;
 int WARN (int,char*) ;

u8 iwl_mvm_get_ctrl_pos(struct cfg80211_chan_def *chandef)
{
 switch (chandef->chan->center_freq - chandef->center_freq1) {
 case -70:
  return PHY_VHT_CTRL_POS_4_BELOW;
 case -50:
  return PHY_VHT_CTRL_POS_3_BELOW;
 case -30:
  return PHY_VHT_CTRL_POS_2_BELOW;
 case -10:
  return PHY_VHT_CTRL_POS_1_BELOW;
 case 10:
  return PHY_VHT_CTRL_POS_1_ABOVE;
 case 30:
  return PHY_VHT_CTRL_POS_2_ABOVE;
 case 50:
  return PHY_VHT_CTRL_POS_3_ABOVE;
 case 70:
  return PHY_VHT_CTRL_POS_4_ABOVE;
 default:
  WARN(1, "Invalid channel definition");

 case 0:





  return PHY_VHT_CTRL_POS_1_BELOW;
 }
}
