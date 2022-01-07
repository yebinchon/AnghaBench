
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ba_enabled; int bf_enabled; } ;
struct iwl_mvm_vif {int pm_enabled; TYPE_2__ bf_data; } ;
struct TYPE_6__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {scalar_t__ ps_disabled; TYPE_3__ fwrt; } ;
struct iwl_beacon_filter_cmd {int ba_escape_timer; int bf_enable_beacon_filter; int member_0; } ;
struct TYPE_4__ {int ps; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int IWL_BA_ESCAPE_TIMER_D3 ;
 int IWL_BF_CMD_CONFIG_DEFAULTS ;
 scalar_t__ IWL_UCODE_WOWLAN ;
 int _iwl_mvm_enable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_beacon_filter_cmd*,int ) ;
 int cpu_to_le32 (int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 scalar_t__ iwl_mvm_vif_low_latency (struct iwl_mvm_vif*) ;

__attribute__((used)) static int iwl_mvm_power_set_ba(struct iwl_mvm *mvm,
    struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_beacon_filter_cmd cmd = {
  IWL_BF_CMD_CONFIG_DEFAULTS,
  .bf_enable_beacon_filter = cpu_to_le32(1),
 };

 if (!mvmvif->bf_data.bf_enabled)
  return 0;

 if (mvm->fwrt.cur_fw_img == IWL_UCODE_WOWLAN)
  cmd.ba_escape_timer = cpu_to_le32(IWL_BA_ESCAPE_TIMER_D3);

 mvmvif->bf_data.ba_enabled = !(!mvmvif->pm_enabled ||
           mvm->ps_disabled ||
           !vif->bss_conf.ps ||
           iwl_mvm_vif_low_latency(mvmvif));

 return _iwl_mvm_enable_beacon_filter(mvm, vif, &cmd, 0);
}
