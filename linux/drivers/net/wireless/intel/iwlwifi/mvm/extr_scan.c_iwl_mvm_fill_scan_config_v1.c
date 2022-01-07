
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_scan_config_v1 {int channel_array; int channel_flags; int bcast_sta_id; int mac_addr; int dwell; void* suspend_time; void* out_of_channel_time; int legacy_rates; void* rx_chains; void* tx_chains; void* flags; } ;
struct TYPE_5__ {int sta_id; } ;
struct iwl_mvm {TYPE_2__ aux_sta; TYPE_1__* addresses; } ;
typedef enum iwl_mvm_scan_type { ____Placeholder_iwl_mvm_scan_type } iwl_mvm_scan_type ;
struct TYPE_6__ {int suspend_time; int max_out_time; } ;
struct TYPE_4__ {int addr; } ;


 int ETH_ALEN ;
 void* cpu_to_le32 (int ) ;
 int iwl_mvm_fill_channels (struct iwl_mvm*,int ,int ) ;
 int iwl_mvm_fill_scan_dwell (struct iwl_mvm*,int *) ;
 int iwl_mvm_get_scan_type (struct iwl_mvm*,int *) ;
 int iwl_mvm_get_valid_tx_ant (struct iwl_mvm*) ;
 int iwl_mvm_scan_config_rates (struct iwl_mvm*) ;
 int iwl_mvm_scan_rx_ant (struct iwl_mvm*) ;
 int memcpy (int *,int *,int ) ;
 TYPE_3__* scan_timing ;

__attribute__((used)) static void iwl_mvm_fill_scan_config_v1(struct iwl_mvm *mvm, void *config,
     u32 flags, u8 channel_flags,
     u32 max_channels)
{
 enum iwl_mvm_scan_type type = iwl_mvm_get_scan_type(mvm, ((void*)0));
 struct iwl_scan_config_v1 *cfg = config;

 cfg->flags = cpu_to_le32(flags);
 cfg->tx_chains = cpu_to_le32(iwl_mvm_get_valid_tx_ant(mvm));
 cfg->rx_chains = cpu_to_le32(iwl_mvm_scan_rx_ant(mvm));
 cfg->legacy_rates = iwl_mvm_scan_config_rates(mvm);
 cfg->out_of_channel_time = cpu_to_le32(scan_timing[type].max_out_time);
 cfg->suspend_time = cpu_to_le32(scan_timing[type].suspend_time);

 iwl_mvm_fill_scan_dwell(mvm, &cfg->dwell);

 memcpy(&cfg->mac_addr, &mvm->addresses[0].addr, ETH_ALEN);

 cfg->bcast_sta_id = mvm->aux_sta.sta_id;
 cfg->channel_flags = channel_flags;

 iwl_mvm_fill_channels(mvm, cfg->channel_array, max_channels);
}
