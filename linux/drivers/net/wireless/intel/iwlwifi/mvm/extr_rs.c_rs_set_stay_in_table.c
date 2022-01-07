
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {scalar_t__ visited_columns; int flush_timer; scalar_t__ total_success; scalar_t__ total_failed; scalar_t__ table_count; int max_success_limit; int max_failure_limit; int table_count_limit; int rs_state; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int IWL_MVM_RS_LEGACY_FAILURE_LIMIT ;
 int IWL_MVM_RS_LEGACY_SUCCESS_LIMIT ;
 int IWL_MVM_RS_LEGACY_TABLE_COUNT ;
 int IWL_MVM_RS_NON_LEGACY_FAILURE_LIMIT ;
 int IWL_MVM_RS_NON_LEGACY_SUCCESS_LIMIT ;
 int IWL_MVM_RS_NON_LEGACY_TABLE_COUNT ;
 int RS_STATE_STAY_IN_COLUMN ;
 int jiffies ;

__attribute__((used)) static void rs_set_stay_in_table(struct iwl_mvm *mvm, u8 is_legacy,
     struct iwl_lq_sta *lq_sta)
{
 IWL_DEBUG_RATE(mvm, "Moving to RS_STATE_STAY_IN_COLUMN\n");
 lq_sta->rs_state = RS_STATE_STAY_IN_COLUMN;
 if (is_legacy) {
  lq_sta->table_count_limit = IWL_MVM_RS_LEGACY_TABLE_COUNT;
  lq_sta->max_failure_limit = IWL_MVM_RS_LEGACY_FAILURE_LIMIT;
  lq_sta->max_success_limit = IWL_MVM_RS_LEGACY_SUCCESS_LIMIT;
 } else {
  lq_sta->table_count_limit = IWL_MVM_RS_NON_LEGACY_TABLE_COUNT;
  lq_sta->max_failure_limit = IWL_MVM_RS_NON_LEGACY_FAILURE_LIMIT;
  lq_sta->max_success_limit = IWL_MVM_RS_NON_LEGACY_SUCCESS_LIMIT;
 }
 lq_sta->table_count = 0;
 lq_sta->total_failed = 0;
 lq_sta->total_success = 0;
 lq_sta->flush_timer = jiffies;
 lq_sta->visited_columns = 0;
}
