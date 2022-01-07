
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct rs_rate {int dummy; } ;
struct iwl_scale_tbl_info {struct iwl_rate_scale_data* tpc_win; struct rs_rate rate; } ;
struct iwl_rate_scale_data {int average_tpt; int success_ratio; } ;
struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_8__ {size_t reduced_tpc; } ;
struct TYPE_5__ {scalar_t__ dbg_fixed_txp_reduction; } ;
struct iwl_lq_sta {TYPE_4__ lq; TYPE_1__ pers; } ;
struct ieee80211_vif {int chanctx_conf; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_7__ {TYPE_2__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
typedef int s32 ;
typedef enum tpc_action { ____Placeholder_tpc_action } tpc_action ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {int band; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,...) ;
 int IWL_INVALID_VALUE ;
 int NUM_NL80211_BANDS ;




 int TPC_INVALID ;
 scalar_t__ TPC_MAX_REDUCTION ;
 size_t TPC_NO_REDUCTION ;
 scalar_t__ WARN_ON (int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rs_get_adjacent_txp (struct iwl_mvm*,size_t,int*,int*) ;
 int rs_get_tpc_action (struct iwl_mvm*,int ,int,int,int,int,int) ;
 int rs_tpc_allowed (struct iwl_mvm*,struct ieee80211_vif*,struct rs_rate*,int) ;

__attribute__((used)) static bool rs_tpc_perform(struct iwl_mvm *mvm,
      struct ieee80211_sta *sta,
      struct iwl_lq_sta *lq_sta,
      struct iwl_scale_tbl_info *tbl)
{
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 struct ieee80211_vif *vif = mvm_sta->vif;
 struct ieee80211_chanctx_conf *chanctx_conf;
 enum nl80211_band band;
 struct iwl_rate_scale_data *window;
 struct rs_rate *rate = &tbl->rate;
 enum tpc_action action;
 s32 sr;
 u8 cur = lq_sta->lq.reduced_tpc;
 int current_tpt;
 int weak, strong;
 int weak_tpt = IWL_INVALID_VALUE, strong_tpt = IWL_INVALID_VALUE;
 rcu_read_lock();
 chanctx_conf = rcu_dereference(vif->chanctx_conf);
 if (WARN_ON(!chanctx_conf))
  band = NUM_NL80211_BANDS;
 else
  band = chanctx_conf->def.chan->band;
 rcu_read_unlock();

 if (!rs_tpc_allowed(mvm, vif, rate, band)) {
  IWL_DEBUG_RATE(mvm,
          "tpc is not allowed. remove txp restrictions\n");
  lq_sta->lq.reduced_tpc = TPC_NO_REDUCTION;
  return cur != TPC_NO_REDUCTION;
 }

 rs_get_adjacent_txp(mvm, cur, &weak, &strong);


 window = tbl->tpc_win;
 sr = window[cur].success_ratio;
 current_tpt = window[cur].average_tpt;
 if (weak != TPC_INVALID)
  weak_tpt = window[weak].average_tpt;
 if (strong != TPC_INVALID)
  strong_tpt = window[strong].average_tpt;

 IWL_DEBUG_RATE(mvm,
         "(TPC: %d): cur_tpt %d SR %d weak %d strong %d weak_tpt %d strong_tpt %d\n",
         cur, current_tpt, sr, weak, strong,
         weak_tpt, strong_tpt);

 action = rs_get_tpc_action(mvm, sr, weak, strong,
       current_tpt, weak_tpt, strong_tpt);


 if (weak == TPC_INVALID && action == 131) {
  IWL_DEBUG_RATE(mvm, "already in lowest txp, stay\n");
  action = 128;
 } else if (strong == TPC_INVALID &&
     (action == 130 ||
      action == 129)) {
  IWL_DEBUG_RATE(mvm, "already in highest txp, stay\n");
  action = 128;
 }

 switch (action) {
 case 131:
  lq_sta->lq.reduced_tpc = weak;
  return 1;
 case 130:
  lq_sta->lq.reduced_tpc = strong;
  return 1;
 case 129:
  lq_sta->lq.reduced_tpc = TPC_NO_REDUCTION;
  return 1;
 case 128:

  break;
 }
 return 0;
}
