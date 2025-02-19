
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;
struct TYPE_2__ {int prev_rs; int next_rs; } ;


 int BIT (int) ;
 int IWL_DEBUG_RATE (struct iwl_priv*,char*,int) ;
 int IWL_RATE_COUNT ;
 int IWL_RATE_INVALID ;
 scalar_t__ is_a_band (int) ;
 int is_legacy (int) ;
 TYPE_1__* iwl_rates ;

__attribute__((used)) static u16 rs_get_adjacent_rate(struct iwl_priv *priv, u8 index, u16 rate_mask,
    int rate_type)
{
 u8 high = IWL_RATE_INVALID;
 u8 low = IWL_RATE_INVALID;



 if (is_a_band(rate_type) || !is_legacy(rate_type)) {
  int i;
  u32 mask;


  i = index - 1;
  if (i >= 0)
   mask = BIT(i);

  for (; i >= 0; i--, mask >>= 1) {
   if (rate_mask & mask) {
    low = i;
    break;
   }
  }


  i = index + 1;
  for (mask = (1 << i); i < IWL_RATE_COUNT; i++, mask <<= 1) {
   if (rate_mask & mask) {
    high = i;
    break;
   }
  }

  return (high << 8) | low;
 }

 low = index;
 while (low != IWL_RATE_INVALID) {
  low = iwl_rates[low].prev_rs;
  if (low == IWL_RATE_INVALID)
   break;
  if (rate_mask & (1 << low))
   break;
  IWL_DEBUG_RATE(priv, "Skipping masked lower rate: %d\n", low);
 }

 high = index;
 while (high != IWL_RATE_INVALID) {
  high = iwl_rates[high].next_rs;
  if (high == IWL_RATE_INVALID)
   break;
  if (rate_mask & (1 << high))
   break;
  IWL_DEBUG_RATE(priv, "Skipping masked higher rate: %d\n", high);
 }

 return (high << 8) | low;
}
