
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath_hw {int iniModesTxGain; } ;


 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9271Modes_high_power_tx_gain_9271 ;
 int ar9271Modes_normal_power_tx_gain_9271 ;

__attribute__((used)) static void ar9271_hw_init_txgain_ini(struct ath_hw *ah, u32 txgain_type)
{
 if (txgain_type == AR5416_EEP_TXGAIN_HIGH_POWER)
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9271Modes_high_power_tx_gain_9271);
 else
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9271Modes_normal_power_tx_gain_9271);
}
