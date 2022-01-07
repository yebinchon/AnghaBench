
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_lq_sta {int active_mimo2_rate; int active_siso_rate; int active_legacy_rate; } ;
struct ieee80211_hdr {int dummy; } ;
typedef enum il_table_type { ____Placeholder_il_table_type } il_table_type ;


 scalar_t__ is_legacy (int) ;
 scalar_t__ is_siso (int) ;

__attribute__((used)) static u16
il4965_rs_get_supported_rates(struct il_lq_sta *lq_sta,
         struct ieee80211_hdr *hdr,
         enum il_table_type rate_type)
{
 if (is_legacy(rate_type)) {
  return lq_sta->active_legacy_rate;
 } else {
  if (is_siso(rate_type))
   return lq_sta->active_siso_rate;
  else
   return lq_sta->active_mimo2_rate;
 }
}
