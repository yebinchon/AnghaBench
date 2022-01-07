
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct iwl_fw_channel_info {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {scalar_t__ band; int hw_value; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 int PHY_BAND_24 ;
 int PHY_BAND_5 ;
 int iwl_mvm_get_channel_width (struct cfg80211_chan_def*) ;
 int iwl_mvm_get_ctrl_pos (struct cfg80211_chan_def*) ;
 int iwl_mvm_set_chan_info (struct iwl_mvm*,struct iwl_fw_channel_info*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
iwl_mvm_set_chan_info_chandef(struct iwl_mvm *mvm,
         struct iwl_fw_channel_info *ci,
         struct cfg80211_chan_def *chandef)
{
 iwl_mvm_set_chan_info(mvm, ci, chandef->chan->hw_value,
         (chandef->chan->band == NL80211_BAND_2GHZ ?
          PHY_BAND_24 : PHY_BAND_5),
          iwl_mvm_get_channel_width(chandef),
          iwl_mvm_get_ctrl_pos(chandef));
}
