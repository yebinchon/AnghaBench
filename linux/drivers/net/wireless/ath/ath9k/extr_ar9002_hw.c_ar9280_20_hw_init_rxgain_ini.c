
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath_hw {int iniModesRxGain; TYPE_1__* eep_ops; } ;
struct TYPE_2__ {scalar_t__ (* get_eeprom_rev ) (struct ath_hw*) ;scalar_t__ (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 scalar_t__ AR5416_EEP_MINOR_VER_17 ;
 scalar_t__ AR5416_EEP_RXGAIN_13DB_BACKOFF ;
 scalar_t__ AR5416_EEP_RXGAIN_23DB_BACKOFF ;
 int EEP_RXGAIN_TYPE ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9280Modes_backoff_13db_rxgain_9280_2 ;
 int ar9280Modes_backoff_23db_rxgain_9280_2 ;
 int ar9280Modes_original_rxgain_9280_2 ;
 scalar_t__ stub1 (struct ath_hw*) ;
 scalar_t__ stub2 (struct ath_hw*,int ) ;

__attribute__((used)) static void ar9280_20_hw_init_rxgain_ini(struct ath_hw *ah)
{
 u32 rxgain_type;

 if (ah->eep_ops->get_eeprom_rev(ah) >= AR5416_EEP_MINOR_VER_17) {
  rxgain_type = ah->eep_ops->get_eeprom(ah, EEP_RXGAIN_TYPE);

  if (rxgain_type == AR5416_EEP_RXGAIN_13DB_BACKOFF)
   INIT_INI_ARRAY(&ah->iniModesRxGain,
           ar9280Modes_backoff_13db_rxgain_9280_2);
  else if (rxgain_type == AR5416_EEP_RXGAIN_23DB_BACKOFF)
   INIT_INI_ARRAY(&ah->iniModesRxGain,
           ar9280Modes_backoff_23db_rxgain_9280_2);
  else
   INIT_INI_ARRAY(&ah->iniModesRxGain,
           ar9280Modes_original_rxgain_9280_2);
 } else {
  INIT_INI_ARRAY(&ah->iniModesRxGain,
          ar9280Modes_original_rxgain_9280_2);
 }
}
