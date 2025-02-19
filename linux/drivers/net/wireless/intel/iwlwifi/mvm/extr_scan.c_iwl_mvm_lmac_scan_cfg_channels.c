
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_scan_req_lmac {int data; } ;
struct iwl_scan_channel_cfg_lmac {int flags; scalar_t__ iter_interval; void* iter_count; void* channel_num; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_channel {int hw_value; } ;


 int IWL_UNIFIED_SCAN_CHANNEL_PARTIAL ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void
iwl_mvm_lmac_scan_cfg_channels(struct iwl_mvm *mvm,
          struct ieee80211_channel **channels,
          int n_channels, u32 ssid_bitmap,
          struct iwl_scan_req_lmac *cmd)
{
 struct iwl_scan_channel_cfg_lmac *channel_cfg = (void *)&cmd->data;
 int i;

 for (i = 0; i < n_channels; i++) {
  channel_cfg[i].channel_num =
   cpu_to_le16(channels[i]->hw_value);
  channel_cfg[i].iter_count = cpu_to_le16(1);
  channel_cfg[i].iter_interval = 0;
  channel_cfg[i].flags =
   cpu_to_le32(IWL_UNIFIED_SCAN_CHANNEL_PARTIAL |
        ssid_bitmap);
 }
}
