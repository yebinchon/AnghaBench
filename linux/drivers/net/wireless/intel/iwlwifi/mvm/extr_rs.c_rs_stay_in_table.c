
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_scale_tbl_info {int column; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {struct iwl_mvm* drv; } ;
struct iwl_lq_sta {int active_tbl; scalar_t__ rs_state; scalar_t__ table_count; scalar_t__ table_count_limit; int visited_columns; scalar_t__ flush_timer; int total_success; int total_failed; int search_better_tbl; int max_success_limit; int max_failure_limit; struct iwl_scale_tbl_info* lq_info; TYPE_1__ pers; } ;


 int BIT (int ) ;
 int HZ ;
 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,...) ;
 int IWL_MVM_RS_STAY_IN_COLUMN_TIMEOUT ;
 scalar_t__ RS_STATE_SEARCH_CYCLE_STARTED ;
 scalar_t__ RS_STATE_STAY_IN_COLUMN ;
 int jiffies ;
 int rs_rate_scale_clear_tbl_windows (struct iwl_mvm*,struct iwl_scale_tbl_info*) ;
 int time_after (int ,unsigned long) ;

__attribute__((used)) static void rs_stay_in_table(struct iwl_lq_sta *lq_sta, bool force_search)
{
 struct iwl_scale_tbl_info *tbl;
 int active_tbl;
 int flush_interval_passed = 0;
 struct iwl_mvm *mvm;

 mvm = lq_sta->pers.drv;
 active_tbl = lq_sta->active_tbl;

 tbl = &(lq_sta->lq_info[active_tbl]);


 if (lq_sta->rs_state == RS_STATE_STAY_IN_COLUMN) {

  if (lq_sta->flush_timer)
   flush_interval_passed =
    time_after(jiffies,
        (unsigned long)(lq_sta->flush_timer +
          (IWL_MVM_RS_STAY_IN_COLUMN_TIMEOUT * HZ)));
  if (force_search ||
      (lq_sta->total_failed > lq_sta->max_failure_limit) ||
      (lq_sta->total_success > lq_sta->max_success_limit) ||
      ((!lq_sta->search_better_tbl) &&
       (lq_sta->flush_timer) && (flush_interval_passed))) {
   IWL_DEBUG_RATE(mvm,
           "LQ: stay is expired %d %d %d\n",
         lq_sta->total_failed,
         lq_sta->total_success,
         flush_interval_passed);


   lq_sta->rs_state = RS_STATE_SEARCH_CYCLE_STARTED;
   IWL_DEBUG_RATE(mvm,
           "Moving to RS_STATE_SEARCH_CYCLE_STARTED\n");
   lq_sta->total_failed = 0;
   lq_sta->total_success = 0;
   lq_sta->flush_timer = 0;

   lq_sta->visited_columns = BIT(tbl->column);






  } else {
   lq_sta->table_count++;
   if (lq_sta->table_count >=
       lq_sta->table_count_limit) {
    lq_sta->table_count = 0;

    IWL_DEBUG_RATE(mvm,
            "LQ: stay in table clear win\n");
    rs_rate_scale_clear_tbl_windows(mvm, tbl);
   }
  }




  if (lq_sta->rs_state == RS_STATE_SEARCH_CYCLE_STARTED) {
   rs_rate_scale_clear_tbl_windows(mvm, tbl);
  }
 }
}
