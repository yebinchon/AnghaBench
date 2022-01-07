
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_scale_tbl_info {int const* expected_tpt; scalar_t__ is_SGI; int is_ht40; int lq_type; } ;
struct iwl_lq_sta {scalar_t__ is_agg; scalar_t__ is_dup; } ;


 int IWL_RATE_COUNT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 void* expected_tpt_legacy ;
 int ** expected_tpt_mimo2_20MHz ;
 int ** expected_tpt_mimo2_40MHz ;
 int ** expected_tpt_mimo3_20MHz ;
 int ** expected_tpt_mimo3_40MHz ;
 int ** expected_tpt_siso20MHz ;
 int ** expected_tpt_siso40MHz ;
 int is_Ht (int ) ;
 scalar_t__ is_legacy (int ) ;
 scalar_t__ is_mimo2 (int ) ;
 scalar_t__ is_mimo3 (int ) ;
 scalar_t__ is_siso (int ) ;

__attribute__((used)) static void rs_set_expected_tpt_table(struct iwl_lq_sta *lq_sta,
          struct iwl_scale_tbl_info *tbl)
{

 const u16 (*ht_tbl_pointer)[IWL_RATE_COUNT];


 if (WARN_ON_ONCE(!is_legacy(tbl->lq_type) && !is_Ht(tbl->lq_type))) {
  tbl->expected_tpt = expected_tpt_legacy;
  return;
 }


 if (is_legacy(tbl->lq_type)) {
  tbl->expected_tpt = expected_tpt_legacy;
  return;
 }




 if (is_siso(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
  ht_tbl_pointer = expected_tpt_siso20MHz;
 else if (is_siso(tbl->lq_type))
  ht_tbl_pointer = expected_tpt_siso40MHz;
 else if (is_mimo2(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
  ht_tbl_pointer = expected_tpt_mimo2_20MHz;
 else if (is_mimo2(tbl->lq_type))
  ht_tbl_pointer = expected_tpt_mimo2_40MHz;
 else if (is_mimo3(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
  ht_tbl_pointer = expected_tpt_mimo3_20MHz;
 else
  ht_tbl_pointer = expected_tpt_mimo3_40MHz;

 if (!tbl->is_SGI && !lq_sta->is_agg)
  tbl->expected_tpt = ht_tbl_pointer[0];
 else if (tbl->is_SGI && !lq_sta->is_agg)
  tbl->expected_tpt = ht_tbl_pointer[1];
 else if (!tbl->is_SGI && lq_sta->is_agg)
  tbl->expected_tpt = ht_tbl_pointer[2];
 else
  tbl->expected_tpt = ht_tbl_pointer[3];
}
