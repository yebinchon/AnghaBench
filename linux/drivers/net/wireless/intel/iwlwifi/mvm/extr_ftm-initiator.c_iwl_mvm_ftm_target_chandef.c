
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct TYPE_4__ {int width; TYPE_1__* chan; } ;
struct cfg80211_pmsr_request_peer {TYPE_2__ chandef; } ;
struct TYPE_3__ {int center_freq; } ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_TOF_BW_20_HT ;
 int IWL_TOF_BW_20_LEGACY ;
 int IWL_TOF_BW_40 ;
 int IWL_TOF_BW_80 ;




 int ieee80211_frequency_to_channel (int ) ;
 int iwl_mvm_get_ctrl_pos (TYPE_2__*) ;

__attribute__((used)) static int iwl_mvm_ftm_target_chandef(struct iwl_mvm *mvm,
          struct cfg80211_pmsr_request_peer *peer,
          u8 *channel, u8 *bandwidth,
          u8 *ctrl_ch_position)
{
 u32 freq = peer->chandef.chan->center_freq;

 *channel = ieee80211_frequency_to_channel(freq);

 switch (peer->chandef.width) {
 case 130:
  *bandwidth = IWL_TOF_BW_20_LEGACY;
  break;
 case 131:
  *bandwidth = IWL_TOF_BW_20_HT;
  break;
 case 129:
  *bandwidth = IWL_TOF_BW_40;
  break;
 case 128:
  *bandwidth = IWL_TOF_BW_80;
  break;
 default:
  IWL_ERR(mvm, "Unsupported BW in FTM request (%d)\n",
   peer->chandef.width);
  return -EINVAL;
 }

 *ctrl_ch_position = (peer->chandef.width > 131) ?
  iwl_mvm_get_ctrl_pos(&peer->chandef) : 0;

 return 0;
}
