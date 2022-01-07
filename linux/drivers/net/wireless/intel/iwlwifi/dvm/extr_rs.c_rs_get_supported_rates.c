
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_lq_sta {int active_mimo3_rate; int active_mimo2_rate; int active_siso_rate; int active_legacy_rate; } ;
struct ieee80211_hdr {int dummy; } ;
typedef enum iwl_table_type { ____Placeholder_iwl_table_type } iwl_table_type ;


 scalar_t__ is_legacy (int) ;
 scalar_t__ is_mimo2 (int) ;
 scalar_t__ is_siso (int) ;

__attribute__((used)) static u16 rs_get_supported_rates(struct iwl_lq_sta *lq_sta,
      struct ieee80211_hdr *hdr,
      enum iwl_table_type rate_type)
{
 if (is_legacy(rate_type)) {
  return lq_sta->active_legacy_rate;
 } else {
  if (is_siso(rate_type))
   return lq_sta->active_siso_rate;
  else if (is_mimo2(rate_type))
   return lq_sta->active_mimo2_rate;
  else
   return lq_sta->active_mimo3_rate;
 }
}
