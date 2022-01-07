
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int txchainmask; int * totalIqCorrMeas; int * totalPowerMeasQ; int * totalPowerMeasI; int cal_samples; } ;
typedef scalar_t__ int32_t ;


 int AR5416_MAX_CHAINS ;
 int AR_PHY_CAL_MEAS_0 (int) ;
 int AR_PHY_CAL_MEAS_1 (int) ;
 int AR_PHY_CAL_MEAS_2 (int) ;
 int BIT (int) ;
 int CALIBRATE ;
 scalar_t__ REG_READ (struct ath_hw*,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int ,int,int ,int ,int ) ;

__attribute__((used)) static void ar9003_hw_iqcal_collect(struct ath_hw *ah)
{
 int i;


 for (i = 0; i < AR5416_MAX_CHAINS; i++) {
  if (ah->txchainmask & BIT(i)) {
   ah->totalPowerMeasI[i] +=
    REG_READ(ah, AR_PHY_CAL_MEAS_0(i));
   ah->totalPowerMeasQ[i] +=
    REG_READ(ah, AR_PHY_CAL_MEAS_1(i));
   ah->totalIqCorrMeas[i] +=
    (int32_t) REG_READ(ah, AR_PHY_CAL_MEAS_2(i));
   ath_dbg(ath9k_hw_common(ah), CALIBRATE,
    "%d: Chn %d pmi=0x%08x;pmq=0x%08x;iqcm=0x%08x;\n",
    ah->cal_samples, i, ah->totalPowerMeasI[i],
    ah->totalPowerMeasQ[i],
    ah->totalIqCorrMeas[i]);
  }
 }
}
