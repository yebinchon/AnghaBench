
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesTxGain; } ;


 scalar_t__ AR_SREV_9330_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330_12 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485_11_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9531_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9300Modes_low_ob_db_tx_gain_table_2p2 ;
 int ar9331_modes_low_ob_db_tx_gain_1p1 ;
 int ar9331_modes_low_ob_db_tx_gain_1p2 ;
 int ar9340Modes_low_ob_db_tx_gain_table_1p0 ;
 int ar9485Modes_low_ob_db_tx_gain_1_1 ;
 int ar9565_1p0_modes_low_ob_db_tx_gain_table ;
 int ar9565_1p1_modes_low_ob_db_tx_gain_table ;
 int ar9580_1p0_low_ob_db_tx_gain_table ;
 int qca953x_1p1_modes_no_xpa_low_power_tx_gain_table ;
 int qca956x_1p0_modes_no_xpa_low_ob_db_tx_gain_table ;

__attribute__((used)) static void ar9003_tx_gain_table_mode2(struct ath_hw *ah)
{
 if (AR_SREV_9330_12(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9331_modes_low_ob_db_tx_gain_1p2);
 else if (AR_SREV_9330_11(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9331_modes_low_ob_db_tx_gain_1p1);
 else if (AR_SREV_9340(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9340Modes_low_ob_db_tx_gain_table_1p0);
 else if (AR_SREV_9531_11(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          qca953x_1p1_modes_no_xpa_low_power_tx_gain_table);
 else if (AR_SREV_9485_11_OR_LATER(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9485Modes_low_ob_db_tx_gain_1_1);
 else if (AR_SREV_9580(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9580_1p0_low_ob_db_tx_gain_table);
 else if (AR_SREV_9561(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          qca956x_1p0_modes_no_xpa_low_ob_db_tx_gain_table);
 else if (AR_SREV_9565_11(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9565_1p1_modes_low_ob_db_tx_gain_table);
 else if (AR_SREV_9565(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9565_1p0_modes_low_ob_db_tx_gain_table);
 else
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9300Modes_low_ob_db_tx_gain_table_2p2);
}
