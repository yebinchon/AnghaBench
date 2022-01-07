
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rs_rate {int index; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
typedef int __le32 ;


 int LINK_QUAL_MAX_RETRY_NUM ;
 int cpu_to_le32 (int ) ;
 int is_legacy (struct rs_rate*) ;
 int rs_get_lower_rate_in_column (struct iwl_lq_sta*,struct rs_rate*) ;
 int rs_toggle_antenna (int ,struct rs_rate*) ;
 int ucode_rate_from_rs_rate (struct iwl_mvm*,struct rs_rate*) ;

__attribute__((used)) static void rs_fill_rates_for_column(struct iwl_mvm *mvm,
         struct iwl_lq_sta *lq_sta,
         struct rs_rate *rate,
         __le32 *rs_table, int *rs_table_index,
         int num_rates, int num_retries,
         u8 valid_tx_ant, bool toggle_ant)
{
 int i, j;
 __le32 ucode_rate;
 bool bottom_reached = 0;
 int prev_rate_idx = rate->index;
 int end = LINK_QUAL_MAX_RETRY_NUM;
 int index = *rs_table_index;

 for (i = 0; i < num_rates && index < end; i++) {
  for (j = 0; j < num_retries && index < end; j++, index++) {
   ucode_rate = cpu_to_le32(ucode_rate_from_rs_rate(mvm,
          rate));
   rs_table[index] = ucode_rate;
   if (toggle_ant)
    rs_toggle_antenna(valid_tx_ant, rate);
  }

  prev_rate_idx = rate->index;
  bottom_reached = rs_get_lower_rate_in_column(lq_sta, rate);
  if (bottom_reached && !is_legacy(rate))
   break;
 }

 if (!bottom_reached && !is_legacy(rate))
  rate->index = prev_rate_idx;

 *rs_table_index = index;
}
