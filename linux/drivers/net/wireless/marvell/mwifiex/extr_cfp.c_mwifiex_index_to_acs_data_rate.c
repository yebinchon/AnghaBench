
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mwifiex_private {int dummy; } ;


 int MWIFIEX_RATE_BITMAP_MCS0 ;
 int MWIFIEX_RATE_FORMAT_HT ;
 int MWIFIEX_RATE_FORMAT_VHT ;
 int MWIFIEX_SUPPORTED_RATES_EXT ;
 int** ac_mcs_rate_nss1 ;
 int** ac_mcs_rate_nss2 ;
 int** mcs_rate ;
 int min (int,int) ;
 int* mwifiex_data_rates ;

u32 mwifiex_index_to_acs_data_rate(struct mwifiex_private *priv,
       u8 index, u8 ht_info)
{
 u32 rate = 0;
 u8 mcs_index = 0;
 u8 bw = 0;
 u8 gi = 0;

 if ((ht_info & 0x3) == MWIFIEX_RATE_FORMAT_VHT) {
  mcs_index = min(index & 0xF, 9);


  bw = (ht_info & 0xC) >> 2;


  gi = (ht_info & 0x10) >> 4;

  if ((index >> 4) == 1)
   rate = ac_mcs_rate_nss2[2 * (3 - bw) + gi][mcs_index];
  else
   rate = ac_mcs_rate_nss1[2 * (3 - bw) + gi][mcs_index];
 } else if ((ht_info & 0x3) == MWIFIEX_RATE_FORMAT_HT) {

  bw = (ht_info & 0xC) >> 2;


  gi = (ht_info & 0x10) >> 4;

  if (index == MWIFIEX_RATE_BITMAP_MCS0) {
   if (gi == 1)
    rate = 0x0D;
   else
    rate = 0x0C;
  } else if (index < 16) {
   if ((bw == 1) || (bw == 0))
    rate = mcs_rate[2 * (1 - bw) + gi][index];
   else
    rate = mwifiex_data_rates[0];
  } else {
   rate = mwifiex_data_rates[0];
  }
 } else {

  if (index >= MWIFIEX_SUPPORTED_RATES_EXT)
   index = 0;
  rate = mwifiex_data_rates[index];
 }

 return rate;
}
