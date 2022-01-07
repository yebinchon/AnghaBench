
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scale_tbl_info {int rate; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int lq; } ;
struct ieee80211_sta {int dummy; } ;


 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,int *) ;
 int rs_fill_lq_cmd (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,int *) ;

__attribute__((used)) static void rs_update_rate_tbl(struct iwl_mvm *mvm,
          struct ieee80211_sta *sta,
          struct iwl_lq_sta *lq_sta,
          struct iwl_scale_tbl_info *tbl)
{
 rs_fill_lq_cmd(mvm, sta, lq_sta, &tbl->rate);
 iwl_mvm_send_lq_cmd(mvm, &lq_sta->lq);
}
