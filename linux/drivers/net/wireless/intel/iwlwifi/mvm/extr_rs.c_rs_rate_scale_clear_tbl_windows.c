
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scale_tbl_info {int * tpc_win; int * win; } ;
struct iwl_mvm {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int IWL_RATE_COUNT ;
 int rs_rate_scale_clear_window (int *) ;

__attribute__((used)) static void rs_rate_scale_clear_tbl_windows(struct iwl_mvm *mvm,
         struct iwl_scale_tbl_info *tbl)
{
 int i;

 IWL_DEBUG_RATE(mvm, "Clearing up window stats\n");
 for (i = 0; i < IWL_RATE_COUNT; i++)
  rs_rate_scale_clear_window(&tbl->win[i]);

 for (i = 0; i < ARRAY_SIZE(tbl->tpc_win); i++)
  rs_rate_scale_clear_window(&tbl->tpc_win[i]);
}
