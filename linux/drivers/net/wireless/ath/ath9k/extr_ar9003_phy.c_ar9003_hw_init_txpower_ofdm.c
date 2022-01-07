
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int * tx_power; } ;


 int AR9300_OFDM_RATES ;
 int* ofdm2pwr ;

__attribute__((used)) static void ar9003_hw_init_txpower_ofdm(struct ath_hw *ah, u8 *rate_array,
     int offset)
{
 int i, j;

 for (i = offset; i < offset + AR9300_OFDM_RATES; i++) {

  j = ofdm2pwr[i - offset];
  ah->tx_power[i] = rate_array[j];
 }
}
