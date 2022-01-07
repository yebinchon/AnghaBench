
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;


 size_t ATH10K_HW_RATECODE (int,int,int ) ;
 size_t ATH10K_TPC_PREAM_TABLE_END ;
 int WMI_RATE_PREAMBLE_CCK ;
 int WMI_RATE_PREAMBLE_HT ;
 int WMI_RATE_PREAMBLE_OFDM ;
 int WMI_RATE_PREAMBLE_VHT ;

void ath10k_wmi_tpc_config_get_rate_code(u8 *rate_code, u16 *pream_table,
      u32 num_tx_chain)
{
 u32 i, j, pream_idx;
 u8 rate_idx;


 rate_idx = 0;
 pream_idx = 0;


 for (i = 0; i < 4; i++) {
  rate_code[rate_idx] =
   ATH10K_HW_RATECODE(i, 0, WMI_RATE_PREAMBLE_CCK);
  rate_idx++;
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < 8; i++) {
  rate_code[rate_idx] =
   ATH10K_HW_RATECODE(i, 0, WMI_RATE_PREAMBLE_OFDM);
  rate_idx++;
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < num_tx_chain; i++) {
  for (j = 0; j < 8; j++) {
   rate_code[rate_idx] =
   ATH10K_HW_RATECODE(j, i, WMI_RATE_PREAMBLE_HT);
   rate_idx++;
  }
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < num_tx_chain; i++) {
  for (j = 0; j < 8; j++) {
   rate_code[rate_idx] =
   ATH10K_HW_RATECODE(j, i, WMI_RATE_PREAMBLE_HT);
   rate_idx++;
  }
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < num_tx_chain; i++) {
  for (j = 0; j < 10; j++) {
   rate_code[rate_idx] =
   ATH10K_HW_RATECODE(j, i, WMI_RATE_PREAMBLE_VHT);
   rate_idx++;
  }
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < num_tx_chain; i++) {
  for (j = 0; j < 10; j++) {
   rate_code[rate_idx] =
   ATH10K_HW_RATECODE(j, i, WMI_RATE_PREAMBLE_VHT);
   rate_idx++;
  }
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;


 for (i = 0; i < num_tx_chain; i++) {
  for (j = 0; j < 10; j++) {
   rate_code[rate_idx] =
   ATH10K_HW_RATECODE(j, i, WMI_RATE_PREAMBLE_VHT);
   rate_idx++;
  }
 }
 pream_table[pream_idx] = rate_idx;
 pream_idx++;

 rate_code[rate_idx++] =
  ATH10K_HW_RATECODE(0, 0, WMI_RATE_PREAMBLE_CCK);
 rate_code[rate_idx++] =
  ATH10K_HW_RATECODE(0, 0, WMI_RATE_PREAMBLE_OFDM);
 rate_code[rate_idx++] =
  ATH10K_HW_RATECODE(0, 0, WMI_RATE_PREAMBLE_CCK);
 rate_code[rate_idx++] =
  ATH10K_HW_RATECODE(0, 0, WMI_RATE_PREAMBLE_OFDM);
 rate_code[rate_idx++] =
  ATH10K_HW_RATECODE(0, 0, WMI_RATE_PREAMBLE_OFDM);

 pream_table[pream_idx] = ATH10K_TPC_PREAM_TABLE_END;
}
