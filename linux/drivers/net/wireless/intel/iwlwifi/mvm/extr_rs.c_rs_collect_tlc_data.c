
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct lq_sta_pers {TYPE_3__** tx_stats; } ;
struct iwl_scale_tbl_info {scalar_t__ column; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int dummy; } ;
struct TYPE_4__ {struct lq_sta_pers pers; } ;
struct TYPE_5__ {TYPE_1__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_2__ lq_sta; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_6__ {int total; int success; } ;


 int EINVAL ;
 int IWL_RATE_COUNT ;
 scalar_t__ RS_COLUMN_INVALID ;
 int _rs_collect_tx_data (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int,int,struct iwl_rate_scale_data*) ;
 int rs_update_tid_tpt_stats (struct iwl_mvm*,struct iwl_mvm_sta*,int ,int) ;

__attribute__((used)) static int rs_collect_tlc_data(struct iwl_mvm *mvm,
          struct iwl_mvm_sta *mvmsta, u8 tid,
          struct iwl_scale_tbl_info *tbl,
          int scale_index, int attempts, int successes)
{
 struct iwl_rate_scale_data *window = ((void*)0);

 if (scale_index < 0 || scale_index >= IWL_RATE_COUNT)
  return -EINVAL;

 if (tbl->column != RS_COLUMN_INVALID) {
  struct lq_sta_pers *pers = &mvmsta->lq_sta.rs_drv.pers;

  pers->tx_stats[tbl->column][scale_index].total += attempts;
  pers->tx_stats[tbl->column][scale_index].success += successes;
 }

 rs_update_tid_tpt_stats(mvm, mvmsta, tid, successes);


 window = &(tbl->win[scale_index]);
 return _rs_collect_tx_data(mvm, tbl, scale_index, attempts, successes,
       window);
}
