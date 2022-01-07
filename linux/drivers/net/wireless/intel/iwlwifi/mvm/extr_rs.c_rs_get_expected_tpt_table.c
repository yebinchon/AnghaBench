
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rs_tx_column {scalar_t__ mode; scalar_t__ sgi; } ;
struct iwl_lq_sta {scalar_t__ is_agg; } ;


 int IWL_RATE_COUNT ;




 scalar_t__ RS_LEGACY ;
 scalar_t__ RS_MIMO2 ;
 scalar_t__ RS_SISO ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int const* expected_tpt_legacy ;
 int ** expected_tpt_mimo2_160MHz ;
 int ** expected_tpt_mimo2_20MHz ;
 int ** expected_tpt_mimo2_40MHz ;
 int ** expected_tpt_mimo2_80MHz ;
 int ** expected_tpt_siso_160MHz ;
 int ** expected_tpt_siso_20MHz ;
 int ** expected_tpt_siso_40MHz ;
 int ** expected_tpt_siso_80MHz ;

__attribute__((used)) static const u16 *rs_get_expected_tpt_table(struct iwl_lq_sta *lq_sta,
         const struct rs_tx_column *column,
         u32 bw)
{

 const u16 (*ht_tbl_pointer)[IWL_RATE_COUNT];

 if (WARN_ON_ONCE(column->mode != RS_LEGACY &&
    column->mode != RS_SISO &&
    column->mode != RS_MIMO2))
  return expected_tpt_legacy;


 if (column->mode == RS_LEGACY)
  return expected_tpt_legacy;

 ht_tbl_pointer = expected_tpt_mimo2_20MHz;



 if (column->mode == RS_SISO) {
  switch (bw) {
  case 130:
   ht_tbl_pointer = expected_tpt_siso_20MHz;
   break;
  case 129:
   ht_tbl_pointer = expected_tpt_siso_40MHz;
   break;
  case 128:
   ht_tbl_pointer = expected_tpt_siso_80MHz;
   break;
  case 131:
   ht_tbl_pointer = expected_tpt_siso_160MHz;
   break;
  default:
   WARN_ON_ONCE(1);
  }
 } else if (column->mode == RS_MIMO2) {
  switch (bw) {
  case 130:
   ht_tbl_pointer = expected_tpt_mimo2_20MHz;
   break;
  case 129:
   ht_tbl_pointer = expected_tpt_mimo2_40MHz;
   break;
  case 128:
   ht_tbl_pointer = expected_tpt_mimo2_80MHz;
   break;
  case 131:
   ht_tbl_pointer = expected_tpt_mimo2_160MHz;
   break;
  default:
   WARN_ON_ONCE(1);
  }
 } else {
  WARN_ON_ONCE(1);
 }

 if (!column->sgi && !lq_sta->is_agg)
  return ht_tbl_pointer[0];
 else if (column->sgi && !lq_sta->is_agg)
  return ht_tbl_pointer[1];
 else if (!column->sgi && lq_sta->is_agg)
  return ht_tbl_pointer[2];
 else
  return ht_tbl_pointer[3];
}
