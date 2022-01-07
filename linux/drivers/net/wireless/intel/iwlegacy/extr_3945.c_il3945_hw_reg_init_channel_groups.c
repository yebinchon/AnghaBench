
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* clip_groups; } ;
struct il_priv {TYPE_2__ _3945; scalar_t__ eeprom; } ;
struct il3945_eeprom_txpower_group {int saturation_power; } ;
struct il3945_eeprom {struct il3945_eeprom_txpower_group* groups; } ;
typedef scalar_t__ s8 ;
typedef int s32 ;
struct TYPE_3__ {scalar_t__ clip_powers; } ;


 int D_POWER (char*) ;
 size_t IL_NUM_TX_CALIB_GROUPS ;
 int IL_WARN (char*,int) ;



 int RATE_COUNT_3945 ;

__attribute__((used)) static void
il3945_hw_reg_init_channel_groups(struct il_priv *il)
{
 u32 i;
 s32 rate_idx;
 struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;
 const struct il3945_eeprom_txpower_group *group;

 D_POWER("Initializing factory calib info from EEPROM\n");

 for (i = 0; i < IL_NUM_TX_CALIB_GROUPS; i++) {
  s8 *clip_pwrs;
  s8 satur_pwr;
  group = &eeprom->groups[i];


  if (group->saturation_power < 40) {
   IL_WARN("Error: saturation power is %d, "
    "less than minimum expected 40\n",
    group->saturation_power);
   return;
  }
  clip_pwrs = (s8 *) il->_3945.clip_groups[i].clip_powers;


  satur_pwr = (s8) (group->saturation_power >> 1);


  for (rate_idx = 0; rate_idx < RATE_COUNT_3945;
       rate_idx++, clip_pwrs++) {
   switch (rate_idx) {
   case 130:
    if (i == 0)
     *clip_pwrs = satur_pwr;
    else
     *clip_pwrs = satur_pwr - 5;
    break;
   case 129:
    if (i == 0)
     *clip_pwrs = satur_pwr - 7;
    else
     *clip_pwrs = satur_pwr - 10;
    break;
   case 128:
    if (i == 0)
     *clip_pwrs = satur_pwr - 9;
    else
     *clip_pwrs = satur_pwr - 12;
    break;
   default:
    *clip_pwrs = satur_pwr;
    break;
   }
  }
 }
}
