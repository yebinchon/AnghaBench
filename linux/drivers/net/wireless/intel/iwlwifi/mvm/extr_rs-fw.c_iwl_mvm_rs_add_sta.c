
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dbg_fixed_rate; int last_rssi; int chain_signal; scalar_t__ chains; int sta_id; struct iwl_mvm* drv; } ;
struct iwl_lq_sta_rs_fw {TYPE_1__ pers; scalar_t__ last_rate_n_flags; } ;
struct TYPE_4__ {struct iwl_lq_sta_rs_fw rs_fw; } ;
struct iwl_mvm_sta {int sta_id; TYPE_2__ lq_sta; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int S8_MIN ;
 int memset (int ,int ,int) ;

void iwl_mvm_rs_add_sta(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta)
{
 struct iwl_lq_sta_rs_fw *lq_sta = &mvmsta->lq_sta.rs_fw;

 IWL_DEBUG_RATE(mvm, "create station rate scale window\n");

 lq_sta->pers.drv = mvm;
 lq_sta->pers.sta_id = mvmsta->sta_id;
 lq_sta->pers.chains = 0;
 memset(lq_sta->pers.chain_signal, 0, sizeof(lq_sta->pers.chain_signal));
 lq_sta->pers.last_rssi = S8_MIN;
 lq_sta->last_rate_n_flags = 0;




}
