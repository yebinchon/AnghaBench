
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int ar9003_rx_gain_table_apply (struct ath_hw*) ;
 int ar9003_tx_gain_table_apply (struct ath_hw*) ;

__attribute__((used)) static void ar9003_hw_init_mode_gain_regs(struct ath_hw *ah)
{
 ar9003_tx_gain_table_apply(ah);
 ar9003_rx_gain_table_apply(ah);
}
