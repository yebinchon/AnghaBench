
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rs_rate {int dummy; } ;
struct iwl_lq_sta {int active_mimo2_rate; int active_siso_rate; int active_legacy_rate; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ is_legacy (struct rs_rate*) ;
 scalar_t__ is_mimo2 (struct rs_rate*) ;
 scalar_t__ is_siso (struct rs_rate*) ;

__attribute__((used)) static u16 rs_get_supported_rates(struct iwl_lq_sta *lq_sta,
      struct rs_rate *rate)
{
 if (is_legacy(rate))
  return lq_sta->active_legacy_rate;
 else if (is_siso(rate))
  return lq_sta->active_siso_rate;
 else if (is_mimo2(rate))
  return lq_sta->active_mimo2_rate;

 WARN_ON_ONCE(1);
 return 0;
}
