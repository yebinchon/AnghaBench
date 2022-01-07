
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_scan_req_lmac {void* scan_prio; void* suspend_time; void* max_out_time; int extended_dwell; int fragmented_dwell; int passive_dwell; int active_dwell; } ;
struct iwl_mvm_scan_params {size_t type; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int suspend_time; int max_out_time; } ;


 int IWL_SCAN_DWELL_ACTIVE ;
 int IWL_SCAN_DWELL_EXTENDED ;
 int IWL_SCAN_DWELL_FRAGMENTED ;
 int IWL_SCAN_DWELL_PASSIVE ;
 int IWL_SCAN_PRIORITY_EXT_6 ;
 void* cpu_to_le32 (int ) ;
 TYPE_1__* scan_timing ;

__attribute__((used)) static void iwl_mvm_scan_lmac_dwell(struct iwl_mvm *mvm,
        struct iwl_scan_req_lmac *cmd,
        struct iwl_mvm_scan_params *params)
{
 cmd->active_dwell = IWL_SCAN_DWELL_ACTIVE;
 cmd->passive_dwell = IWL_SCAN_DWELL_PASSIVE;
 cmd->fragmented_dwell = IWL_SCAN_DWELL_FRAGMENTED;
 cmd->extended_dwell = IWL_SCAN_DWELL_EXTENDED;
 cmd->max_out_time = cpu_to_le32(scan_timing[params->type].max_out_time);
 cmd->suspend_time = cpu_to_le32(scan_timing[params->type].suspend_time);
 cmd->scan_prio = cpu_to_le32(IWL_SCAN_PRIORITY_EXT_6);
}
