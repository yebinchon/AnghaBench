
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t* txp_pd_table; size_t** tmpL; } ;
struct ath5k_hw {TYPE_1__ ah_txpower; } ;
typedef size_t s16 ;


 size_t AR5K_EEPROM_POWER_TABLE_SIZE ;

__attribute__((used)) static void
ath5k_fill_pwr_to_pcdac_table(struct ath5k_hw *ah, s16* table_min,
       s16 *table_max)
{
 u8 *pcdac_out = ah->ah_txpower.txp_pd_table;
 u8 *pcdac_tmp = ah->ah_txpower.tmpL[0];
 u8 pcdac_0, pcdac_n, pcdac_i, pwr_idx, i;
 s16 min_pwr, max_pwr;


 min_pwr = table_min[0];
 pcdac_0 = pcdac_tmp[0];

 max_pwr = table_max[0];
 pcdac_n = pcdac_tmp[table_max[0] - table_min[0]];


 pcdac_i = 0;
 for (i = 0; i < min_pwr; i++)
  pcdac_out[pcdac_i++] = pcdac_0;


 pwr_idx = min_pwr;
 for (i = 0; pwr_idx <= max_pwr &&
      pcdac_i < AR5K_EEPROM_POWER_TABLE_SIZE; i++) {
  pcdac_out[pcdac_i++] = pcdac_tmp[i];
  pwr_idx++;
 }


 while (pcdac_i < AR5K_EEPROM_POWER_TABLE_SIZE)
  pcdac_out[pcdac_i++] = pcdac_n;

}
