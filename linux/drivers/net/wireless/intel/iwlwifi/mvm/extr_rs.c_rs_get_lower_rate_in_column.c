
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rs_rate {int index; int type; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {struct iwl_mvm* drv; } ;
struct iwl_lq_sta {TYPE_1__ pers; } ;


 int IWL_RATE_INVALID ;
 int rs_get_adjacent_rate (struct iwl_mvm*,int,int,int ) ;
 int rs_get_supported_rates (struct iwl_lq_sta*,struct rs_rate*) ;

__attribute__((used)) static bool rs_get_lower_rate_in_column(struct iwl_lq_sta *lq_sta,
     struct rs_rate *rate)
{
 u8 low;
 u16 high_low;
 u16 rate_mask;
 struct iwl_mvm *mvm = lq_sta->pers.drv;

 rate_mask = rs_get_supported_rates(lq_sta, rate);
 high_low = rs_get_adjacent_rate(mvm, rate->index, rate_mask,
     rate->type);
 low = high_low & 0xff;


 if (low == IWL_RATE_INVALID)
  return 1;

 rate->index = low;
 return 0;
}
