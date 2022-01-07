
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY_BB_THERM_ADC_4 ;
 int AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE ;
 int AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE ;
 int AR_PHY_CL_TAB_0 ;
 int AR_PHY_CL_TAB_1 ;
 int AR_PHY_CL_TAB_2 ;
 int AR_PHY_CL_TAB_CL_GAIN_MOD ;
 int AR_PHY_PAPRD_TRAINER_STAT1 ;
 int AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ;
 int AR_PHY_TPC_11_B0 ;
 int AR_PHY_TPC_11_B1 ;
 int AR_PHY_TPC_11_B2 ;
 int AR_PHY_TPC_11_OLPC_GAIN_DELTA ;
 int AR_PHY_TPC_12 ;
 int AR_PHY_TPC_12_DESIRED_SCALE_HT40_5 ;
 int AR_PHY_TPC_18 ;
 int AR_PHY_TPC_18_THERM_CAL_VALUE ;
 int AR_PHY_TPC_18_VOLT_CAL_VALUE ;
 int AR_PHY_TPC_19 ;
 int AR_PHY_TPC_19_ALPHA_THERM ;
 int AR_PHY_TPC_19_ALPHA_VOLT ;
 int CALIBRATE ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int) ;

__attribute__((used)) static unsigned int ar9003_get_desired_gain(struct ath_hw *ah, int chain,
         int target_power)
{
 int olpc_gain_delta = 0, cl_gain_mod;
 int alpha_therm, alpha_volt;
 int therm_cal_value, volt_cal_value;
 int therm_value, volt_value;
 int thermal_gain_corr, voltage_gain_corr;
 int desired_scale, desired_gain = 0;
 u32 reg_olpc = 0, reg_cl_gain = 0;

 REG_CLR_BIT(ah, AR_PHY_PAPRD_TRAINER_STAT1,
      AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE);
 desired_scale = REG_READ_FIELD(ah, AR_PHY_TPC_12,
           AR_PHY_TPC_12_DESIRED_SCALE_HT40_5);
 alpha_therm = REG_READ_FIELD(ah, AR_PHY_TPC_19,
         AR_PHY_TPC_19_ALPHA_THERM);
 alpha_volt = REG_READ_FIELD(ah, AR_PHY_TPC_19,
        AR_PHY_TPC_19_ALPHA_VOLT);
 therm_cal_value = REG_READ_FIELD(ah, AR_PHY_TPC_18,
      AR_PHY_TPC_18_THERM_CAL_VALUE);
 volt_cal_value = REG_READ_FIELD(ah, AR_PHY_TPC_18,
     AR_PHY_TPC_18_VOLT_CAL_VALUE);
 therm_value = REG_READ_FIELD(ah, AR_PHY_BB_THERM_ADC_4,
         AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE);
 volt_value = REG_READ_FIELD(ah, AR_PHY_BB_THERM_ADC_4,
        AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE);

 switch (chain) {
 case 0:
  reg_olpc = AR_PHY_TPC_11_B0;
  reg_cl_gain = AR_PHY_CL_TAB_0;
  break;
 case 1:
  reg_olpc = AR_PHY_TPC_11_B1;
  reg_cl_gain = AR_PHY_CL_TAB_1;
  break;
 case 2:
  reg_olpc = AR_PHY_TPC_11_B2;
  reg_cl_gain = AR_PHY_CL_TAB_2;
  break;
 default:
  ath_dbg(ath9k_hw_common(ah), CALIBRATE,
   "Invalid chainmask: %d\n", chain);
  break;
 }

 olpc_gain_delta = REG_READ_FIELD(ah, reg_olpc,
      AR_PHY_TPC_11_OLPC_GAIN_DELTA);
 cl_gain_mod = REG_READ_FIELD(ah, reg_cl_gain,
      AR_PHY_CL_TAB_CL_GAIN_MOD);

 if (olpc_gain_delta >= 128)
  olpc_gain_delta = olpc_gain_delta - 256;

 thermal_gain_corr = (alpha_therm * (therm_value - therm_cal_value) +
        (256 / 2)) / 256;
 voltage_gain_corr = (alpha_volt * (volt_value - volt_cal_value) +
        (128 / 2)) / 128;
 desired_gain = target_power - olpc_gain_delta - thermal_gain_corr -
     voltage_gain_corr + desired_scale + cl_gain_mod;

 return desired_gain;
}
