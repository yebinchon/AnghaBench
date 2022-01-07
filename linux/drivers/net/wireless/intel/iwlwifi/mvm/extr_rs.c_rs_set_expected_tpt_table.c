
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_tx_column {int dummy; } ;
struct rs_rate {int bw; } ;
struct iwl_scale_tbl_info {size_t column; int expected_tpt; struct rs_rate rate; } ;
struct iwl_lq_sta {int dummy; } ;


 int rs_get_expected_tpt_table (struct iwl_lq_sta*,struct rs_tx_column const*,int ) ;
 struct rs_tx_column* rs_tx_columns ;

__attribute__((used)) static void rs_set_expected_tpt_table(struct iwl_lq_sta *lq_sta,
          struct iwl_scale_tbl_info *tbl)
{
 struct rs_rate *rate = &tbl->rate;
 const struct rs_tx_column *column = &rs_tx_columns[tbl->column];

 tbl->expected_tpt = rs_get_expected_tpt_table(lq_sta, column, rate->bw);
}
