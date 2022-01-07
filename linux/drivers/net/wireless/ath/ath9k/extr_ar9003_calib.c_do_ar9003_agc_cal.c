
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_CAL ;
 int CALIBRATE ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int,int ,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;

__attribute__((used)) static bool do_ar9003_agc_cal(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 bool status;

 REG_WRITE(ah, AR_PHY_AGC_CONTROL,
    REG_READ(ah, AR_PHY_AGC_CONTROL) |
    AR_PHY_AGC_CONTROL_CAL);

 status = ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL,
          AR_PHY_AGC_CONTROL_CAL,
          0, AH_WAIT_TIMEOUT);
 if (!status) {
  ath_dbg(common, CALIBRATE,
   "offset calibration failed to complete in %d ms,"
   "noisy environment?\n",
   AH_WAIT_TIMEOUT / 1000);
  return 0;
 }

 return 1;
}
