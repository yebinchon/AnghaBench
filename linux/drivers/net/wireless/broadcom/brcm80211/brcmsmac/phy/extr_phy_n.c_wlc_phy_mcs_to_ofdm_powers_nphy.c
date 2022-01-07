
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



void
wlc_phy_mcs_to_ofdm_powers_nphy(u8 *power, u8 rate_ofdm_start,
    u8 rate_ofdm_end, u8 rate_mcs_start)
{
 u8 rate1, rate2;

 for (rate1 = rate_ofdm_start, rate2 = rate_mcs_start;
      rate1 <= rate_ofdm_end; rate1++, rate2++) {
  power[rate1] = power[rate2];
  if (rate1 == rate_ofdm_start)
   power[++rate1] = power[rate2];
 }
}
