
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int temperature; } ;
struct TYPE_8__ {TYPE_2__ common; } ;
struct TYPE_9__ {int flag; TYPE_3__ general; } ;
struct TYPE_10__ {TYPE_4__ stats; } ;
struct TYPE_6__ {int * therm_r4; int * therm_r3; int * therm_r2; int * therm_r1; } ;
struct il_priv {TYPE_5__ _4965; int status; TYPE_1__ card_alive_init; } ;
typedef scalar_t__ s32 ;


 int D_TEMP (char*,...) ;
 int IL_ERR (char*) ;
 int KELVIN_TO_CELSIUS (scalar_t__) ;
 int STATS_REPLY_FLG_HT40_MODE_MSK ;
 int S_TEMPERATURE ;
 scalar_t__ TEMPERATURE_CALIB_A_VAL ;
 scalar_t__ TEMPERATURE_CALIB_KELVIN_OFFSET ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ sign_extend32 (scalar_t__,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il4965_hw_get_temperature(struct il_priv *il)
{
 s32 temperature;
 s32 vt;
 s32 R1, R2, R3;
 u32 R4;

 if (test_bit(S_TEMPERATURE, &il->status) &&
     (il->_4965.stats.flag & STATS_REPLY_FLG_HT40_MODE_MSK)) {
  D_TEMP("Running HT40 temperature calibration\n");
  R1 = (s32) le32_to_cpu(il->card_alive_init.therm_r1[1]);
  R2 = (s32) le32_to_cpu(il->card_alive_init.therm_r2[1]);
  R3 = (s32) le32_to_cpu(il->card_alive_init.therm_r3[1]);
  R4 = le32_to_cpu(il->card_alive_init.therm_r4[1]);
 } else {
  D_TEMP("Running temperature calibration\n");
  R1 = (s32) le32_to_cpu(il->card_alive_init.therm_r1[0]);
  R2 = (s32) le32_to_cpu(il->card_alive_init.therm_r2[0]);
  R3 = (s32) le32_to_cpu(il->card_alive_init.therm_r3[0]);
  R4 = le32_to_cpu(il->card_alive_init.therm_r4[0]);
 }
 if (!test_bit(S_TEMPERATURE, &il->status))
  vt = sign_extend32(R4, 23);
 else
  vt = sign_extend32(le32_to_cpu
       (il->_4965.stats.general.common.temperature),
       23);

 D_TEMP("Calib values R[1-3]: %d %d %d R4: %d\n", R1, R2, R3, vt);

 if (R3 == R1) {
  IL_ERR("Calibration conflict R1 == R3\n");
  return -1;
 }



 temperature = TEMPERATURE_CALIB_A_VAL * (vt - R2);
 temperature /= (R3 - R1);
 temperature =
     (temperature * 97) / 100 + TEMPERATURE_CALIB_KELVIN_OFFSET;

 D_TEMP("Calibrated temperature: %dK, %dC\n", temperature,
        KELVIN_TO_CELSIUS(temperature));

 return temperature;
}
