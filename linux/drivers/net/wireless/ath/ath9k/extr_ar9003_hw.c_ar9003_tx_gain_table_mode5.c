
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesTxGain; } ;


 scalar_t__ AR_SREV_9300_22 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485_11_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9300Modes_type5_tx_gain_table_2p2 ;
 int ar9485Modes_green_ob_db_tx_gain_1_1 ;
 int ar9580_1p0_type5_tx_gain_table ;
 int qca956x_1p0_modes_no_xpa_green_tx_gain_table ;

__attribute__((used)) static void ar9003_tx_gain_table_mode5(struct ath_hw *ah)
{
 if (AR_SREV_9485_11_OR_LATER(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9485Modes_green_ob_db_tx_gain_1_1);
 else if (AR_SREV_9580(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9580_1p0_type5_tx_gain_table);
 else if (AR_SREV_9561(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          qca956x_1p0_modes_no_xpa_green_tx_gain_table);
 else if (AR_SREV_9300_22(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9300Modes_type5_tx_gain_table_2p2);
}
