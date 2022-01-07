
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int HTT_TX_Q_STATE_ENTRY_EXP ;
 int HTT_TX_Q_STATE_ENTRY_FACTOR ;
 int SM (int,int ) ;
 int max (int,int) ;

__attribute__((used)) static u8 ath10k_htt_tx_txq_calc_size(size_t count)
{
 int exp;
 int factor;

 exp = 0;
 factor = count >> 7;

 while (factor >= 64 && exp < 4) {
  factor >>= 3;
  exp++;
 }

 if (exp == 4)
  return 0xff;

 if (count > 0)
  factor = max(1, factor);

 return SM(exp, HTT_TX_Q_STATE_ENTRY_EXP) |
        SM(factor, HTT_TX_Q_STATE_ENTRY_FACTOR);
}
