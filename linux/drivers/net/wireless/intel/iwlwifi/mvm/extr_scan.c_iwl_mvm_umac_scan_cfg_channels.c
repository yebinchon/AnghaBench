
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ channel_num; int iter_count; scalar_t__ iter_interval; } ;
struct TYPE_3__ {int iter_count; scalar_t__ iter_interval; int band; } ;
struct iwl_scan_channel_cfg_umac {TYPE_2__ v1; TYPE_1__ v2; int flags; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_channel {scalar_t__ hw_value; } ;


 int IWL_SCAN_BAND_2_4 ;
 int IWL_SCAN_BAND_5_2 ;
 scalar_t__ IWL_SCAN_LAST_2_4_CHN ;
 int cpu_to_le32 (int ) ;
 scalar_t__ iwl_mvm_is_scan_ext_chan_supported (struct iwl_mvm*) ;

__attribute__((used)) static void
iwl_mvm_umac_scan_cfg_channels(struct iwl_mvm *mvm,
          struct ieee80211_channel **channels,
          int n_channels, u32 ssid_bitmap,
          struct iwl_scan_channel_cfg_umac *channel_cfg)
{
 int i;

 for (i = 0; i < n_channels; i++) {
  channel_cfg[i].flags = cpu_to_le32(ssid_bitmap);
  channel_cfg[i].v1.channel_num = channels[i]->hw_value;
  if (iwl_mvm_is_scan_ext_chan_supported(mvm)) {
   channel_cfg[i].v2.band =
    channels[i]->hw_value <= IWL_SCAN_LAST_2_4_CHN ?
     IWL_SCAN_BAND_2_4 : IWL_SCAN_BAND_5_2;
   channel_cfg[i].v2.iter_count = 1;
   channel_cfg[i].v2.iter_interval = 0;
  } else {
   channel_cfg[i].v1.iter_count = 1;
   channel_cfg[i].v1.iter_interval = 0;
  }
 }
}
