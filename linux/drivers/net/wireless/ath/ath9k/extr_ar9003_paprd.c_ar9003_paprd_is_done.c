
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_PAPRD_TRAINER_STAT1 ;
 int AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_AGC2_PWR ;
 int AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 int CALIBRATE ;
 int PAPRD_IDEAL_AGC2_PWR_RANGE ;
 int REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int,int) ;

bool ar9003_paprd_is_done(struct ath_hw *ah)
{
 int paprd_done, agc2_pwr;

 paprd_done = REG_READ_FIELD(ah, AR_PHY_PAPRD_TRAINER_STAT1,
    AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE);

 if (AR_SREV_9485(ah))
  goto exit;

 if (paprd_done == 0x1) {
  agc2_pwr = REG_READ_FIELD(ah, AR_PHY_PAPRD_TRAINER_STAT1,
    AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_AGC2_PWR);

  ath_dbg(ath9k_hw_common(ah), CALIBRATE,
   "AGC2_PWR = 0x%x training done = 0x%x\n",
   agc2_pwr, paprd_done);





  if (agc2_pwr <= PAPRD_IDEAL_AGC2_PWR_RANGE)
   paprd_done = 0;
 }
exit:
 return !!paprd_done;
}
