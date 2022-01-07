
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct TYPE_2__ {int* caldac; int** rtt_table; int cal_flags; } ;


 int AR_PHY_65NM_RXRF_AGC (int) ;
 int AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE ;
 int REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int SW_PKDET_DONE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ar9003_hw_patch_rtt(struct ath_hw *ah, int index, int chain)
{
 int agc, caldac;

 if (!test_bit(SW_PKDET_DONE, &ah->caldata->cal_flags))
  return;

 if ((index != 5) || (chain >= 2))
  return;

 agc = REG_READ_FIELD(ah, AR_PHY_65NM_RXRF_AGC(chain),
        AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE);
 if (!agc)
  return;

 caldac = ah->caldata->caldac[chain];
 ah->caldata->rtt_table[chain][index] &= 0xFFFF05FF;
 caldac = (caldac & 0x20) | ((caldac & 0x1F) << 7);
 ah->caldata->rtt_table[chain][index] |= (caldac << 4);
}
