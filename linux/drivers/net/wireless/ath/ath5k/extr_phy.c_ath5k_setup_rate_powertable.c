
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct ath5k_rate_pcal_info {int target_power_6to24; int target_power_36; int target_power_48; int target_power_54; } ;
struct TYPE_2__ {int* txp_rates_power_table; int txp_min_pwr; int txp_cur_pwr; int txp_ofdm; int txp_offset; scalar_t__ txp_cck_ofdm_gainf_delta; scalar_t__ txp_max_pwr; } ;
struct ath5k_hw {scalar_t__ ah_phy_revision; TYPE_1__ ah_txpower; } ;
typedef int s16 ;


 scalar_t__ AR5K_EEPROM_MODE_11G ;
 scalar_t__ AR5K_SREV_PHY_5212A ;
 int min (int,int) ;

__attribute__((used)) static void
ath5k_setup_rate_powertable(struct ath5k_hw *ah, u16 max_pwr,
   struct ath5k_rate_pcal_info *rate_info,
   u8 ee_mode)
{
 unsigned int i;
 u16 *rates;
 s16 rate_idx_scaled = 0;



 max_pwr *= 2;
 max_pwr = min(max_pwr, (u16) ah->ah_txpower.txp_max_pwr) / 2;


 rates = ah->ah_txpower.txp_rates_power_table;


 for (i = 0; i < 5; i++)
  rates[i] = min(max_pwr, rate_info->target_power_6to24);


 rates[5] = min(rates[0], rate_info->target_power_36);
 rates[6] = min(rates[0], rate_info->target_power_48);
 rates[7] = min(rates[0], rate_info->target_power_54);



 rates[8] = min(rates[0], rate_info->target_power_6to24);

 rates[9] = min(rates[0], rate_info->target_power_36);

 rates[10] = min(rates[0], rate_info->target_power_36);

 rates[11] = min(rates[0], rate_info->target_power_48);

 rates[12] = min(rates[0], rate_info->target_power_48);

 rates[13] = min(rates[0], rate_info->target_power_54);

 rates[14] = min(rates[0], rate_info->target_power_54);


 rates[15] = min(rates[0], rate_info->target_power_6to24);





 if ((ee_mode == AR5K_EEPROM_MODE_11G) &&
 (ah->ah_phy_revision < AR5K_SREV_PHY_5212A))
  for (i = 8; i <= 15; i++)
   rates[i] -= ah->ah_txpower.txp_cck_ofdm_gainf_delta;







 ah->ah_txpower.txp_min_pwr = 2 * rates[7];
 ah->ah_txpower.txp_cur_pwr = 2 * rates[0];




 ah->ah_txpower.txp_ofdm = rates[7];




 for (i = 0; i < 16; i++) {
  rate_idx_scaled = rates[i] + ah->ah_txpower.txp_offset;

  if (rate_idx_scaled > 63)
   rate_idx_scaled = 63;
  if (rate_idx_scaled < 0)
   rate_idx_scaled = 0;
  rates[i] = rate_idx_scaled;
 }
}
