
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_scale_tbl_info {int * win; } ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int active_tbl; scalar_t__ total_failed; scalar_t__ max_failure_limit; scalar_t__ total_success; scalar_t__ max_success_limit; scalar_t__ table_count; scalar_t__ table_count_limit; scalar_t__ stay_in_tbl; scalar_t__ flush_timer; int search_better_tbl; struct il_scale_tbl_info* lq_info; struct il_priv* drv; } ;


 int D_RATE (char*,...) ;
 int RATE_COUNT ;
 scalar_t__ RATE_SCALE_FLUSH_INTVL ;
 int il4965_rs_rate_scale_clear_win (int *) ;
 int jiffies ;
 int time_after (int ,unsigned long) ;

__attribute__((used)) static void
il4965_rs_stay_in_table(struct il_lq_sta *lq_sta, bool force_search)
{
 struct il_scale_tbl_info *tbl;
 int i;
 int active_tbl;
 int flush_interval_passed = 0;
 struct il_priv *il;

 il = lq_sta->drv;
 active_tbl = lq_sta->active_tbl;

 tbl = &(lq_sta->lq_info[active_tbl]);


 if (lq_sta->stay_in_tbl) {


  if (lq_sta->flush_timer)
   flush_interval_passed =
       time_after(jiffies,
           (unsigned long)(lq_sta->flush_timer +
             RATE_SCALE_FLUSH_INTVL));
  if (force_search ||
      lq_sta->total_failed > lq_sta->max_failure_limit ||
      lq_sta->total_success > lq_sta->max_success_limit ||
      (!lq_sta->search_better_tbl && lq_sta->flush_timer &&
       flush_interval_passed)) {
   D_RATE("LQ: stay is expired %d %d %d\n",
          lq_sta->total_failed, lq_sta->total_success,
          flush_interval_passed);


   lq_sta->stay_in_tbl = 0;
   lq_sta->total_failed = 0;
   lq_sta->total_success = 0;
   lq_sta->flush_timer = 0;







  } else {
   lq_sta->table_count++;
   if (lq_sta->table_count >= lq_sta->table_count_limit) {
    lq_sta->table_count = 0;

    D_RATE("LQ: stay in table clear win\n");
    for (i = 0; i < RATE_COUNT; i++)
     il4965_rs_rate_scale_clear_win(&
               (tbl->
         win
         [i]));
   }
  }




  if (!lq_sta->stay_in_tbl) {
   for (i = 0; i < RATE_COUNT; i++)
    il4965_rs_rate_scale_clear_win(&(tbl->win[i]));
  }
 }
}
