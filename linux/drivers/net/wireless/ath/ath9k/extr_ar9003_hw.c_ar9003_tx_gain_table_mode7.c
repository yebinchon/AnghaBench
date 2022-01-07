
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesTxGain; } ;


 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9340_cus227_tx_gain_table_1p0 ;

__attribute__((used)) static void ar9003_tx_gain_table_mode7(struct ath_hw *ah)
{
 if (AR_SREV_9340(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9340_cus227_tx_gain_table_1p0);
}
