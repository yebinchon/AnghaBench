
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_tt_params {scalar_t__ ct_kill_entry; scalar_t__ ct_kill_exit; scalar_t__ dynamic_smps_entry; scalar_t__ dynamic_smps_exit; scalar_t__ tx_protection_entry; scalar_t__ tx_protection_exit; TYPE_1__* tx_backoff; scalar_t__ support_tx_backoff; scalar_t__ support_tx_protection; scalar_t__ support_dynamic_smps; scalar_t__ support_ct_kill; } ;
struct iwl_mvm_tt_mgmt {int dynamic_smps; scalar_t__ min_backoff; scalar_t__ tx_backoff; int throttle; struct iwl_tt_params params; } ;
struct iwl_mvm {scalar_t__ temperature; int hw; struct iwl_mvm_tt_mgmt thermal_throttle; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ temperature; int backoff; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,...) ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int TT_TX_BACKOFF_SIZE ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm*) ;
 int iwl_mvm_enter_ctkill (struct iwl_mvm*) ;
 int iwl_mvm_exit_ctkill (struct iwl_mvm*) ;
 int iwl_mvm_tt_smps_iterator ;
 int iwl_mvm_tt_tx_backoff (struct iwl_mvm*,scalar_t__) ;
 int iwl_mvm_tt_tx_protection (struct iwl_mvm*,int) ;
 scalar_t__ max (scalar_t__,int ) ;

void iwl_mvm_tt_handler(struct iwl_mvm *mvm)
{
 struct iwl_tt_params *params = &mvm->thermal_throttle.params;
 struct iwl_mvm_tt_mgmt *tt = &mvm->thermal_throttle;
 s32 temperature = mvm->temperature;
 bool throttle_enable = 0;
 int i;
 u32 tx_backoff;

 IWL_DEBUG_TEMP(mvm, "NIC temperature: %d\n", mvm->temperature);

 if (params->support_ct_kill && temperature >= params->ct_kill_entry) {
  iwl_mvm_enter_ctkill(mvm);
  return;
 }

 if (params->support_ct_kill &&
     temperature <= params->ct_kill_exit) {
  iwl_mvm_exit_ctkill(mvm);
  return;
 }

 if (params->support_dynamic_smps) {
  if (!tt->dynamic_smps &&
      temperature >= params->dynamic_smps_entry) {
   IWL_DEBUG_TEMP(mvm, "Enable dynamic SMPS\n");
   tt->dynamic_smps = 1;
   ieee80211_iterate_active_interfaces_atomic(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_tt_smps_iterator, mvm);
   throttle_enable = 1;
  } else if (tt->dynamic_smps &&
      temperature <= params->dynamic_smps_exit) {
   IWL_DEBUG_TEMP(mvm, "Disable dynamic SMPS\n");
   tt->dynamic_smps = 0;
   ieee80211_iterate_active_interfaces_atomic(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_tt_smps_iterator, mvm);
  }
 }

 if (params->support_tx_protection) {
  if (temperature >= params->tx_protection_entry) {
   iwl_mvm_tt_tx_protection(mvm, 1);
   throttle_enable = 1;
  } else if (temperature <= params->tx_protection_exit) {
   iwl_mvm_tt_tx_protection(mvm, 0);
  }
 }

 if (params->support_tx_backoff) {
  tx_backoff = tt->min_backoff;
  for (i = 0; i < TT_TX_BACKOFF_SIZE; i++) {
   if (temperature < params->tx_backoff[i].temperature)
    break;
   tx_backoff = max(tt->min_backoff,
      params->tx_backoff[i].backoff);
  }
  if (tx_backoff != tt->min_backoff)
   throttle_enable = 1;
  if (tt->tx_backoff != tx_backoff)
   iwl_mvm_tt_tx_backoff(mvm, tx_backoff);
 }

 if (!tt->throttle && throttle_enable) {
  IWL_WARN(mvm,
    "Due to high temperature thermal throttling initiated\n");
  tt->throttle = 1;
 } else if (tt->throttle && !tt->dynamic_smps &&
     tt->tx_backoff == tt->min_backoff &&
     temperature <= params->tx_protection_exit) {
  IWL_WARN(mvm,
    "Temperature is back to normal thermal throttling stopped\n");
  tt->throttle = 0;
 }
}
