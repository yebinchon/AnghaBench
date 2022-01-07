
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rs_rate {int dummy; } ;
struct rs_bfer_active_iter_data {struct iwl_mvm_sta* bfer_mvmsta; struct ieee80211_sta* exclude_sta; } ;
struct iwl_lq_cmd {void* ss_params; } ;
struct TYPE_5__ {struct iwl_lq_cmd lq; } ;
struct TYPE_6__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; TYPE_3__ lq_sta; } ;
struct iwl_mvm {int hw; } ;
struct TYPE_4__ {scalar_t__ ss_force; } ;
struct iwl_lq_sta {int bfer_capable; scalar_t__ stbc_capable; TYPE_1__ pers; struct iwl_lq_cmd lq; } ;
struct ieee80211_sta {int dummy; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,...) ;
 int LQ_SS_BFER_ALLOWED ;
 int LQ_SS_FORCE ;
 int LQ_SS_PARAMS_VALID ;
 int LQ_SS_STBC_1SS_ALLOWED ;
 scalar_t__ RS_SS_FORCE_BFER ;
 scalar_t__ RS_SS_FORCE_NONE ;
 scalar_t__ RS_SS_FORCE_STBC ;
 void* cpu_to_le32 (int) ;
 int ieee80211_iterate_stations_atomic (int ,int ,struct rs_bfer_active_iter_data*) ;
 int iwl_mvm_bt_coex_is_mimo_allowed (struct iwl_mvm*,struct ieee80211_sta*) ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,struct iwl_lq_cmd*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int le32_to_cpu (void*) ;
 int rs_bfer_active_iter ;
 scalar_t__ rs_bfer_priority_cmp (struct iwl_mvm_sta*,struct iwl_mvm_sta*) ;

__attribute__((used)) static void rs_set_lq_ss_params(struct iwl_mvm *mvm,
    struct ieee80211_sta *sta,
    struct iwl_lq_sta *lq_sta,
    const struct rs_rate *initial_rate)
{
 struct iwl_lq_cmd *lq_cmd = &lq_sta->lq;
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct rs_bfer_active_iter_data data = {
  .exclude_sta = sta,
  .bfer_mvmsta = ((void*)0),
 };
 struct iwl_mvm_sta *bfer_mvmsta = ((void*)0);
 u32 ss_params = LQ_SS_PARAMS_VALID;

 if (!iwl_mvm_bt_coex_is_mimo_allowed(mvm, sta))
  goto out;
 if (lq_sta->stbc_capable)
  ss_params |= LQ_SS_STBC_1SS_ALLOWED;

 if (!lq_sta->bfer_capable)
  goto out;

 ieee80211_iterate_stations_atomic(mvm->hw,
       rs_bfer_active_iter,
       &data);
 bfer_mvmsta = data.bfer_mvmsta;





 if (!bfer_mvmsta) {
  IWL_DEBUG_RATE(mvm, "No sta with BFER allowed found. Allow\n");

  ss_params |= LQ_SS_BFER_ALLOWED;
  goto out;
 }

 IWL_DEBUG_RATE(mvm, "Found existing sta %d with BFER activated\n",
         bfer_mvmsta->sta_id);


 if (rs_bfer_priority_cmp(mvmsta, bfer_mvmsta) > 0) {
  struct iwl_lq_cmd *bfersta_lq_cmd =
   &bfer_mvmsta->lq_sta.rs_drv.lq;
  u32 bfersta_ss_params = le32_to_cpu(bfersta_lq_cmd->ss_params);

  bfersta_ss_params &= ~LQ_SS_BFER_ALLOWED;
  bfersta_lq_cmd->ss_params = cpu_to_le32(bfersta_ss_params);
  iwl_mvm_send_lq_cmd(mvm, bfersta_lq_cmd);

  ss_params |= LQ_SS_BFER_ALLOWED;
  IWL_DEBUG_RATE(mvm,
          "Lower priority BFER sta found (%d). Switch BFER\n",
          bfer_mvmsta->sta_id);
 }
out:
 lq_cmd->ss_params = cpu_to_le32(ss_params);
}
