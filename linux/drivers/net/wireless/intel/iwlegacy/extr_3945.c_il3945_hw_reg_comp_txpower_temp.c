
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_9__ {TYPE_3__* clip_groups; } ;
struct il_priv {int temperature; size_t channel_count; TYPE_5__* ops; TYPE_4__ _3945; struct il_channel_info* channel_info; int status; scalar_t__ disable_tx_power_cal; scalar_t__ eeprom; } ;
struct il_channel_info {size_t group_idx; TYPE_2__* power_info; } ;
struct il3945_eeprom {TYPE_1__* groups; } ;
typedef int s8 ;
typedef int s32 ;
typedef int s16 ;
struct TYPE_10__ {int (* send_tx_power ) (struct il_priv*) ;} ;
struct TYPE_8__ {int * clip_powers; } ;
struct TYPE_7__ {int base_power_idx; size_t power_table_idx; int tpc; } ;
struct TYPE_6__ {scalar_t__ temperature; } ;


 size_t IL_NUM_SCAN_RATES ;
 int RATE_1M_IDX_TBL ;
 int RATE_6M_IDX_TBL ;
 size_t RATE_COUNT_3945 ;
 int S_SCANNING ;
 int il3945_hw_reg_adjust_power_by_temp (int,int) ;
 int il3945_hw_reg_fix_power_idx (int) ;
 int il3945_hw_reg_set_scan_power (struct il_priv*,size_t,int ,int const*,struct il_channel_info*,size_t) ;
 size_t il_is_channel_a_band (struct il_channel_info*) ;
 int ** power_gain_table ;
 int stub1 (struct il_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il3945_hw_reg_comp_txpower_temp(struct il_priv *il)
{
 struct il_channel_info *ch_info = ((void*)0);
 struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;
 int delta_idx;
 const s8 *clip_pwrs;
 u8 a_band;
 u8 rate_idx;
 u8 scan_tbl_idx;
 u8 i;
 int ref_temp;
 int temperature = il->temperature;

 if (il->disable_tx_power_cal || test_bit(S_SCANNING, &il->status)) {

  return 0;
 }

 for (i = 0; i < il->channel_count; i++) {
  ch_info = &il->channel_info[i];
  a_band = il_is_channel_a_band(ch_info);


  ref_temp = (s16) eeprom->groups[ch_info->group_idx].temperature;



  delta_idx =
      il3945_hw_reg_adjust_power_by_temp(temperature, ref_temp);


  for (rate_idx = 0; rate_idx < RATE_COUNT_3945; rate_idx++) {
   int power_idx =
       ch_info->power_info[rate_idx].base_power_idx;


   power_idx += delta_idx;


   power_idx = il3945_hw_reg_fix_power_idx(power_idx);
   ch_info->power_info[rate_idx].power_table_idx =
       (u8) power_idx;
   ch_info->power_info[rate_idx].tpc =
       power_gain_table[a_band][power_idx];
  }


  clip_pwrs =
      il->_3945.clip_groups[ch_info->group_idx].clip_powers;


  for (scan_tbl_idx = 0; scan_tbl_idx < IL_NUM_SCAN_RATES;
       scan_tbl_idx++) {
   s32 actual_idx =
       (scan_tbl_idx ==
        0) ? RATE_1M_IDX_TBL : RATE_6M_IDX_TBL;
   il3945_hw_reg_set_scan_power(il, scan_tbl_idx,
           actual_idx, clip_pwrs,
           ch_info, a_band);
  }
 }


 return il->ops->send_tx_power(il);
}
