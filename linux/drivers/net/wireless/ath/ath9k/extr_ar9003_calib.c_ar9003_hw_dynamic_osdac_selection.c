
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_65NM_CH0_BB1 ;
 int AR_PHY_65NM_CH0_BB3 ;
 int AR_PHY_65NM_CH1_BB1 ;
 int AR_PHY_65NM_CH1_BB3 ;
 int AR_PHY_65NM_CH2_BB1 ;
 int AR_PHY_65NM_CH2_BB3 ;
 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_EN ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_CAL ;
 int AR_PHY_AGC_CONTROL_FLTR_CAL ;
 int AR_PHY_AGC_CONTROL_OFFSET_CAL ;
 int AR_PHY_AGC_CONTROL_PKDET_CAL ;
 int AR_PHY_CL_CAL_CTL ;
 int AR_PHY_CL_CAL_ENABLE ;
 int AR_PHY_TX_IQCAL_CONTROL_0 ;
 int AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ;
 int CALIBRATE ;
 int OFF_LOWER_LT ;
 int OFF_UPPER_LT ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int,int ,int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static bool ar9003_hw_dynamic_osdac_selection(struct ath_hw *ah,
           bool txiqcal_done)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int ch0_done, osdac_ch0, dc_off_ch0_i1, dc_off_ch0_q1, dc_off_ch0_i2,
  dc_off_ch0_q2, dc_off_ch0_i3, dc_off_ch0_q3;
 int ch1_done, osdac_ch1, dc_off_ch1_i1, dc_off_ch1_q1, dc_off_ch1_i2,
  dc_off_ch1_q2, dc_off_ch1_i3, dc_off_ch1_q3;
 int ch2_done, osdac_ch2, dc_off_ch2_i1, dc_off_ch2_q1, dc_off_ch2_i2,
  dc_off_ch2_q2, dc_off_ch2_i3, dc_off_ch2_q3;
 bool status;
 u32 temp, val;




 REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_OFFSET_CAL);
 REG_CLR_BIT(ah, AR_PHY_TX_IQCAL_CONTROL_0,
      AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
 REG_WRITE(ah, AR_PHY_AGC_CONTROL,
    REG_READ(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_CAL);

 status = ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL,
          AR_PHY_AGC_CONTROL_CAL,
          0, AH_WAIT_TIMEOUT);
 if (!status) {
  ath_dbg(common, CALIBRATE,
   "AGC cal without offset cal failed to complete in 1ms");
  return 0;
 }






 REG_SET_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_OFFSET_CAL);
 REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL,
      AR_PHY_CL_CAL_ENABLE);
 REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_FLTR_CAL);
 REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_PKDET_CAL);

 ch0_done = 0;
 ch1_done = 0;
 ch2_done = 0;

 while ((ch0_done == 0) || (ch1_done == 0) || (ch2_done == 0)) {
  osdac_ch0 = (REG_READ(ah, AR_PHY_65NM_CH0_BB1) >> 30) & 0x3;
  osdac_ch1 = (REG_READ(ah, AR_PHY_65NM_CH1_BB1) >> 30) & 0x3;
  osdac_ch2 = (REG_READ(ah, AR_PHY_65NM_CH2_BB1) >> 30) & 0x3;

  REG_SET_BIT(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

  REG_WRITE(ah, AR_PHY_AGC_CONTROL,
     REG_READ(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_CAL);

  status = ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL,
           AR_PHY_AGC_CONTROL_CAL,
           0, AH_WAIT_TIMEOUT);
  if (!status) {
   ath_dbg(common, CALIBRATE,
    "DC offset cal failed to complete in 1ms");
   return 0;
  }

  REG_CLR_BIT(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);




  REG_WRITE(ah, AR_PHY_65NM_CH0_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (1 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH1_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (1 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH2_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (1 << 8)));

  temp = REG_READ(ah, AR_PHY_65NM_CH0_BB3);
  dc_off_ch0_i1 = (temp >> 26) & 0x1f;
  dc_off_ch0_q1 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH1_BB3);
  dc_off_ch1_i1 = (temp >> 26) & 0x1f;
  dc_off_ch1_q1 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH2_BB3);
  dc_off_ch2_i1 = (temp >> 26) & 0x1f;
  dc_off_ch2_q1 = (temp >> 21) & 0x1f;




  REG_WRITE(ah, AR_PHY_65NM_CH0_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (2 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH1_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (2 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH2_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (2 << 8)));

  temp = REG_READ(ah, AR_PHY_65NM_CH0_BB3);
  dc_off_ch0_i2 = (temp >> 26) & 0x1f;
  dc_off_ch0_q2 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH1_BB3);
  dc_off_ch1_i2 = (temp >> 26) & 0x1f;
  dc_off_ch1_q2 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH2_BB3);
  dc_off_ch2_i2 = (temp >> 26) & 0x1f;
  dc_off_ch2_q2 = (temp >> 21) & 0x1f;




  REG_WRITE(ah, AR_PHY_65NM_CH0_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (3 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH1_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (3 << 8)));
  REG_WRITE(ah, AR_PHY_65NM_CH2_BB3,
     ((REG_READ(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (3 << 8)));

  temp = REG_READ(ah, AR_PHY_65NM_CH0_BB3);
  dc_off_ch0_i3 = (temp >> 26) & 0x1f;
  dc_off_ch0_q3 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH1_BB3);
  dc_off_ch1_i3 = (temp >> 26) & 0x1f;
  dc_off_ch1_q3 = (temp >> 21) & 0x1f;

  temp = REG_READ(ah, AR_PHY_65NM_CH2_BB3);
  dc_off_ch2_i3 = (temp >> 26) & 0x1f;
  dc_off_ch2_q3 = (temp >> 21) & 0x1f;

  if ((dc_off_ch0_i1 > OFF_UPPER_LT) || (dc_off_ch0_i1 < OFF_LOWER_LT) ||
      (dc_off_ch0_i2 > OFF_UPPER_LT) || (dc_off_ch0_i2 < OFF_LOWER_LT) ||
      (dc_off_ch0_i3 > OFF_UPPER_LT) || (dc_off_ch0_i3 < OFF_LOWER_LT) ||
      (dc_off_ch0_q1 > OFF_UPPER_LT) || (dc_off_ch0_q1 < OFF_LOWER_LT) ||
      (dc_off_ch0_q2 > OFF_UPPER_LT) || (dc_off_ch0_q2 < OFF_LOWER_LT) ||
      (dc_off_ch0_q3 > OFF_UPPER_LT) || (dc_off_ch0_q3 < OFF_LOWER_LT)) {
   if (osdac_ch0 == 3) {
    ch0_done = 1;
   } else {
    osdac_ch0++;

    val = REG_READ(ah, AR_PHY_65NM_CH0_BB1) & 0x3fffffff;
    val |= (osdac_ch0 << 30);
    REG_WRITE(ah, AR_PHY_65NM_CH0_BB1, val);

    ch0_done = 0;
   }
  } else {
   ch0_done = 1;
  }

  if ((dc_off_ch1_i1 > OFF_UPPER_LT) || (dc_off_ch1_i1 < OFF_LOWER_LT) ||
      (dc_off_ch1_i2 > OFF_UPPER_LT) || (dc_off_ch1_i2 < OFF_LOWER_LT) ||
      (dc_off_ch1_i3 > OFF_UPPER_LT) || (dc_off_ch1_i3 < OFF_LOWER_LT) ||
      (dc_off_ch1_q1 > OFF_UPPER_LT) || (dc_off_ch1_q1 < OFF_LOWER_LT) ||
      (dc_off_ch1_q2 > OFF_UPPER_LT) || (dc_off_ch1_q2 < OFF_LOWER_LT) ||
      (dc_off_ch1_q3 > OFF_UPPER_LT) || (dc_off_ch1_q3 < OFF_LOWER_LT)) {
   if (osdac_ch1 == 3) {
    ch1_done = 1;
   } else {
    osdac_ch1++;

    val = REG_READ(ah, AR_PHY_65NM_CH1_BB1) & 0x3fffffff;
    val |= (osdac_ch1 << 30);
    REG_WRITE(ah, AR_PHY_65NM_CH1_BB1, val);

    ch1_done = 0;
   }
  } else {
   ch1_done = 1;
  }

  if ((dc_off_ch2_i1 > OFF_UPPER_LT) || (dc_off_ch2_i1 < OFF_LOWER_LT) ||
      (dc_off_ch2_i2 > OFF_UPPER_LT) || (dc_off_ch2_i2 < OFF_LOWER_LT) ||
      (dc_off_ch2_i3 > OFF_UPPER_LT) || (dc_off_ch2_i3 < OFF_LOWER_LT) ||
      (dc_off_ch2_q1 > OFF_UPPER_LT) || (dc_off_ch2_q1 < OFF_LOWER_LT) ||
      (dc_off_ch2_q2 > OFF_UPPER_LT) || (dc_off_ch2_q2 < OFF_LOWER_LT) ||
      (dc_off_ch2_q3 > OFF_UPPER_LT) || (dc_off_ch2_q3 < OFF_LOWER_LT)) {
   if (osdac_ch2 == 3) {
    ch2_done = 1;
   } else {
    osdac_ch2++;

    val = REG_READ(ah, AR_PHY_65NM_CH2_BB1) & 0x3fffffff;
    val |= (osdac_ch2 << 30);
    REG_WRITE(ah, AR_PHY_65NM_CH2_BB1, val);

    ch2_done = 0;
   }
  } else {
   ch2_done = 1;
  }
 }

 REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_OFFSET_CAL);
 REG_SET_BIT(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);





 REG_SET_BIT(ah, AR_PHY_TX_IQCAL_CONTROL_0,
      AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);

 return 1;
}
