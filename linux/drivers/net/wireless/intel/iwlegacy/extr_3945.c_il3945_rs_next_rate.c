
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_supp_rates; } ;
struct il_priv {int band; TYPE_1__ _3945; } ;


 int IL_OFDM_RATES_MASK ;


 int RATE_11M_IDX ;
 int RATE_12M_IDX ;
 int RATE_5M_IDX ;
 int RATE_6M_IDX ;
 int RATE_9M_IDX ;
 int il3945_get_prev_ieee_rate (int) ;
 int il_is_associated (struct il_priv*) ;

int
il3945_rs_next_rate(struct il_priv *il, int rate)
{
 int next_rate = il3945_get_prev_ieee_rate(rate);

 switch (il->band) {
 case 128:
  if (rate == RATE_12M_IDX)
   next_rate = RATE_9M_IDX;
  else if (rate == RATE_6M_IDX)
   next_rate = RATE_6M_IDX;
  break;
 case 129:
  if (!(il->_3945.sta_supp_rates & IL_OFDM_RATES_MASK) &&
      il_is_associated(il)) {
   if (rate == RATE_11M_IDX)
    next_rate = RATE_5M_IDX;
  }
  break;

 default:
  break;
 }

 return next_rate;
}
