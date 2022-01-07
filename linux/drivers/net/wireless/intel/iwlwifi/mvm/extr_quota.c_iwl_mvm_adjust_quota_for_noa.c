
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_time_quota_data {int quota; int id_and_color; } ;
struct iwl_time_quota_cmd {int dummy; } ;
struct iwl_mvm_vif {TYPE_1__* phy_ctxt; int ap_ibss_active; } ;
struct iwl_mvm {int noa_duration; TYPE_3__* noa_vif; } ;
struct TYPE_5__ {int beacon_int; } ;
struct TYPE_6__ {TYPE_2__ bss_conf; } ;
struct TYPE_4__ {int id; } ;


 int FW_CTXT_ID_MSK ;
 int FW_CTXT_ID_POS ;
 int IWL_DEBUG_QUOTA (struct iwl_mvm*,char*,int,int) ;
 int MAX_BINDINGS ;
 int cpu_to_le32 (int) ;
 struct iwl_time_quota_data* iwl_mvm_quota_cmd_get_quota (struct iwl_mvm*,struct iwl_time_quota_cmd*,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (TYPE_3__*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_adjust_quota_for_noa(struct iwl_mvm *mvm,
      struct iwl_time_quota_cmd *cmd)
{
}
