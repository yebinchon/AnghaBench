
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct il_scale_tbl_info {int lq_type; int ant_type; } ;
struct TYPE_5__ {int valid_tx_ant; } ;
struct il_priv {TYPE_1__ hw_params; } ;
struct TYPE_8__ {int agg_time_limit; int agg_dis_start_th; int agg_frame_cnt_limit; } ;
struct TYPE_6__ {int mimo_delimiter; int dual_stream_ant_msk; int single_stream_ant_msk; } ;
struct il_link_quality_cmd {TYPE_4__ agg_params; TYPE_3__* rs_table; TYPE_2__ general_params; } ;
struct il_lq_sta {int band; struct il_link_quality_cmd lq; } ;
struct TYPE_7__ {void* rate_n_flags; } ;


 int IL_HT_NUMBER_TRY ;
 int IL_NUMBER_TRY ;
 int LINK_QUAL_AGG_DISABLE_START_DEF ;
 int LINK_QUAL_AGG_FRAME_LIMIT_DEF ;
 int LINK_QUAL_AGG_TIME_LIMIT_DEF ;
 int LINK_QUAL_MAX_RETRY_NUM ;
 int NUM_TRY_BEFORE_ANT_TOGGLE ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int il4965_num_of_ant (int ) ;
 int il4965_rs_dbgfs_set_mcs (struct il_lq_sta*,int *,int) ;
 int il4965_rs_get_lower_rate (struct il_lq_sta*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_get_tbl_info_from_mcs (int ,int ,struct il_scale_tbl_info*,int*) ;
 scalar_t__ il4965_rs_toggle_antenna (int,int *,struct il_scale_tbl_info*) ;
 scalar_t__ is_legacy (int ) ;
 scalar_t__ is_mimo (int ) ;

__attribute__((used)) static void
il4965_rs_fill_link_cmd(struct il_priv *il, struct il_lq_sta *lq_sta,
   u32 new_rate)
{
 struct il_scale_tbl_info tbl_type;
 int idx = 0;
 int rate_idx;
 int repeat_rate = 0;
 u8 ant_toggle_cnt = 0;
 u8 use_ht_possible = 1;
 u8 valid_tx_ant = 0;
 struct il_link_quality_cmd *lq_cmd = &lq_sta->lq;


 il4965_rs_dbgfs_set_mcs(lq_sta, &new_rate, idx);


 il4965_rs_get_tbl_info_from_mcs(new_rate, lq_sta->band, &tbl_type,
     &rate_idx);


 if (is_legacy(tbl_type.lq_type)) {
  ant_toggle_cnt = 1;
  repeat_rate = IL_NUMBER_TRY;
 } else {
  repeat_rate = IL_HT_NUMBER_TRY;
 }

 lq_cmd->general_params.mimo_delimiter =
     is_mimo(tbl_type.lq_type) ? 1 : 0;


 lq_cmd->rs_table[idx].rate_n_flags = cpu_to_le32(new_rate);

 if (il4965_num_of_ant(tbl_type.ant_type) == 1) {
  lq_cmd->general_params.single_stream_ant_msk =
      tbl_type.ant_type;
 } else if (il4965_num_of_ant(tbl_type.ant_type) == 2) {
  lq_cmd->general_params.dual_stream_ant_msk = tbl_type.ant_type;
 }

 idx++;
 repeat_rate--;
 if (il)
  valid_tx_ant = il->hw_params.valid_tx_ant;


 while (idx < LINK_QUAL_MAX_RETRY_NUM) {



  while (repeat_rate > 0 && idx < LINK_QUAL_MAX_RETRY_NUM) {
   if (is_legacy(tbl_type.lq_type)) {
    if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
     ant_toggle_cnt++;
    else if (il &&
      il4965_rs_toggle_antenna(valid_tx_ant,
          &new_rate,
          &tbl_type))
     ant_toggle_cnt = 1;
   }


   il4965_rs_dbgfs_set_mcs(lq_sta, &new_rate, idx);


   lq_cmd->rs_table[idx].rate_n_flags =
       cpu_to_le32(new_rate);
   repeat_rate--;
   idx++;
  }

  il4965_rs_get_tbl_info_from_mcs(new_rate, lq_sta->band,
      &tbl_type, &rate_idx);




  if (is_mimo(tbl_type.lq_type))
   lq_cmd->general_params.mimo_delimiter = idx;


  new_rate =
      il4965_rs_get_lower_rate(lq_sta, &tbl_type, rate_idx,
          use_ht_possible);


  if (is_legacy(tbl_type.lq_type)) {
   if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
    ant_toggle_cnt++;
   else if (il &&
     il4965_rs_toggle_antenna(valid_tx_ant,
         &new_rate, &tbl_type))
    ant_toggle_cnt = 1;

   repeat_rate = IL_NUMBER_TRY;
  } else {
   repeat_rate = IL_HT_NUMBER_TRY;
  }



  use_ht_possible = 0;


  il4965_rs_dbgfs_set_mcs(lq_sta, &new_rate, idx);


  lq_cmd->rs_table[idx].rate_n_flags = cpu_to_le32(new_rate);

  idx++;
  repeat_rate--;
 }

 lq_cmd->agg_params.agg_frame_cnt_limit = LINK_QUAL_AGG_FRAME_LIMIT_DEF;
 lq_cmd->agg_params.agg_dis_start_th = LINK_QUAL_AGG_DISABLE_START_DEF;

 lq_cmd->agg_params.agg_time_limit =
     cpu_to_le16(LINK_QUAL_AGG_TIME_LIMIT_DEF);
}
