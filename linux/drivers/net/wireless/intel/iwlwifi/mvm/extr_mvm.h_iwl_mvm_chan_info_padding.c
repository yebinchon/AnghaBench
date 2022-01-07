
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct iwl_fw_channel_info_v1 {int dummy; } ;
struct iwl_fw_channel_info {int dummy; } ;


 scalar_t__ iwl_mvm_has_ultra_hb_channel (struct iwl_mvm*) ;

__attribute__((used)) static inline size_t iwl_mvm_chan_info_padding(struct iwl_mvm *mvm)
{
 return iwl_mvm_has_ultra_hb_channel(mvm) ? 0 :
  sizeof(struct iwl_fw_channel_info) -
  sizeof(struct iwl_fw_channel_info_v1);
}
