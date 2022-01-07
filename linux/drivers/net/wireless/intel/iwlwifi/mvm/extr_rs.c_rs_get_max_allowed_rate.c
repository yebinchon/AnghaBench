
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_tx_column {int mode; } ;
struct iwl_lq_sta {int max_legacy_rate_idx; int max_siso_rate_idx; int max_mimo2_rate_idx; } ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int rs_get_max_allowed_rate(struct iwl_lq_sta *lq_sta,
       const struct rs_tx_column *column)
{
 switch (column->mode) {
 case 130:
  return lq_sta->max_legacy_rate_idx;
 case 128:
  return lq_sta->max_siso_rate_idx;
 case 129:
  return lq_sta->max_mimo2_rate_idx;
 default:
  WARN_ON_ONCE(1);
 }

 return lq_sta->max_legacy_rate_idx;
}
