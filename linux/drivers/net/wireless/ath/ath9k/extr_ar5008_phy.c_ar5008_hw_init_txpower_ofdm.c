
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int * tx_power; } ;
typedef int int16_t ;


 int AR5008_OFDM_RATES ;

__attribute__((used)) static void ar5008_hw_init_txpower_ofdm(struct ath_hw *ah, int16_t *rate_array,
     int offset)
{
 int i, idx = 0;

 for (i = offset; i < offset + AR5008_OFDM_RATES; i++) {
  ah->tx_power[i] = rate_array[idx];
  idx++;
 }
}
