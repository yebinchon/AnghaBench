
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_fw_channel_info_v1 {int dummy; } ;
struct iwl_fw_channel_info {int dummy; } ;


 scalar_t__ iwl_mvm_has_ultra_hb_channel (struct iwl_mvm*) ;

__attribute__((used)) static inline void *iwl_mvm_chan_info_cmd_tail(struct iwl_mvm *mvm,
            struct iwl_fw_channel_info *ci)
{
 return (u8 *)ci + (iwl_mvm_has_ultra_hb_channel(mvm) ?
      sizeof(struct iwl_fw_channel_info) :
      sizeof(struct iwl_fw_channel_info_v1));
}
