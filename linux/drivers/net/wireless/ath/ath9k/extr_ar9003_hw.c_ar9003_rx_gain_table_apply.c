
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int ar9003_hw_get_rx_gain_idx (struct ath_hw*) ;
 int ar9003_rx_gain_table_mode0 (struct ath_hw*) ;
 int ar9003_rx_gain_table_mode1 (struct ath_hw*) ;
 int ar9003_rx_gain_table_mode2 (struct ath_hw*) ;
 int ar9003_rx_gain_table_mode3 (struct ath_hw*) ;

__attribute__((used)) static void ar9003_rx_gain_table_apply(struct ath_hw *ah)
{
 switch (ar9003_hw_get_rx_gain_idx(ah)) {
 case 0:
 default:
  ar9003_rx_gain_table_mode0(ah);
  break;
 case 1:
  ar9003_rx_gain_table_mode1(ah);
  break;
 case 2:
  ar9003_rx_gain_table_mode2(ah);
  break;
 case 3:
  ar9003_rx_gain_table_mode3(ah);
  break;
 }
}
