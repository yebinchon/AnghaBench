
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_backoff; int min_backoff; } ;
struct iwl_mvm {TYPE_1__ thermal_throttle; } ;
struct iwl_host_cmd {int data; int len; int id; } ;


 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int REPLY_THERMAL_MNG_BACKOFF ;
 scalar_t__ iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;
 int max (int ,int ) ;

void iwl_mvm_tt_tx_backoff(struct iwl_mvm *mvm, u32 backoff)
{
 struct iwl_host_cmd cmd = {
  .id = REPLY_THERMAL_MNG_BACKOFF,
  .len = { sizeof(u32), },
  .data = { &backoff, },
 };

 backoff = max(backoff, mvm->thermal_throttle.min_backoff);

 if (iwl_mvm_send_cmd(mvm, &cmd) == 0) {
  IWL_DEBUG_TEMP(mvm, "Set Thermal Tx backoff to: %u\n",
          backoff);
  mvm->thermal_throttle.tx_backoff = backoff;
 } else {
  IWL_ERR(mvm, "Failed to change Thermal Tx backoff\n");
 }
}
