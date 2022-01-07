
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath_hw {int iniModesTxGain; TYPE_1__* eep_ops; } ;
struct TYPE_2__ {scalar_t__ (* get_eeprom_rev ) (struct ath_hw*) ;} ;


 scalar_t__ AR5416_EEP_MINOR_VER_19 ;
 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9280Modes_high_power_tx_gain_9280_2 ;
 int ar9280Modes_original_tx_gain_9280_2 ;
 scalar_t__ stub1 (struct ath_hw*) ;

__attribute__((used)) static void ar9280_20_hw_init_txgain_ini(struct ath_hw *ah, u32 txgain_type)
{
 if (ah->eep_ops->get_eeprom_rev(ah) >= AR5416_EEP_MINOR_VER_19) {
  if (txgain_type == AR5416_EEP_TXGAIN_HIGH_POWER)
   INIT_INI_ARRAY(&ah->iniModesTxGain,
           ar9280Modes_high_power_tx_gain_9280_2);
  else
   INIT_INI_ARRAY(&ah->iniModesTxGain,
           ar9280Modes_original_tx_gain_9280_2);
 } else {
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9280Modes_original_tx_gain_9280_2);
 }
}
