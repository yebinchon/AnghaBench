
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct il_priv {int const tx_power_user_lmt; } ;
struct il_channel_info {int scan_power; TYPE_1__* power_info; struct il3945_scan_power_info* scan_pwr_info; } ;
struct TYPE_5__ {int dsp_atten; int tx_gain; } ;
struct il3945_scan_power_info {int requested_power; size_t power_table_idx; TYPE_2__ tpc; } ;
typedef int s8 ;
typedef size_t s32 ;
struct TYPE_6__ {int dsp_atten; int tx_gain; } ;
struct TYPE_4__ {size_t power_table_idx; int requested_power; } ;


 size_t RATE_6M_IDX_TBL ;
 size_t il3945_hw_reg_fix_power_idx (size_t) ;
 int min (int,int const) ;
 TYPE_3__** power_gain_table ;

__attribute__((used)) static void
il3945_hw_reg_set_scan_power(struct il_priv *il, u32 scan_tbl_idx, s32 rate_idx,
        const s8 *clip_pwrs,
        struct il_channel_info *ch_info, int band_idx)
{
 struct il3945_scan_power_info *scan_power_info;
 s8 power;
 u8 power_idx;

 scan_power_info = &ch_info->scan_pwr_info[scan_tbl_idx];




 power = min(ch_info->scan_power, clip_pwrs[RATE_6M_IDX_TBL]);

 power = min(power, il->tx_power_user_lmt);
 scan_power_info->requested_power = power;






 power_idx =
     ch_info->power_info[rate_idx].power_table_idx - (power -
            ch_info->
            power_info
            [RATE_6M_IDX_TBL].
            requested_power) *
     2;
 power_idx = il3945_hw_reg_fix_power_idx(power_idx);

 scan_power_info->power_table_idx = power_idx;
 scan_power_info->tpc.tx_gain =
     power_gain_table[band_idx][power_idx].tx_gain;
 scan_power_info->tpc.dsp_atten =
     power_gain_table[band_idx][power_idx].dsp_atten;
}
