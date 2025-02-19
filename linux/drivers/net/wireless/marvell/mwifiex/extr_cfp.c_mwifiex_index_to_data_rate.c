
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ user_dev_mcs_support; scalar_t__ is_hw_11ac_capable; } ;


 int BIT (int) ;
 scalar_t__ HT_STREAM_2X2 ;
 int MWIFIEX_RATE_BITMAP_MCS0 ;
 int MWIFIEX_SUPPORTED_RATES_EXT ;
 int** mcs_rate ;
 int* mwifiex_data_rates ;
 int mwifiex_index_to_acs_data_rate (struct mwifiex_private*,int,int) ;

u32 mwifiex_index_to_data_rate(struct mwifiex_private *priv,
          u8 index, u8 ht_info)
{
 u32 mcs_num_supp =
  (priv->adapter->user_dev_mcs_support == HT_STREAM_2X2) ? 16 : 8;
 u32 rate;

 if (priv->adapter->is_hw_11ac_capable)
  return mwifiex_index_to_acs_data_rate(priv, index, ht_info);

 if (ht_info & BIT(0)) {
  if (index == MWIFIEX_RATE_BITMAP_MCS0) {
   if (ht_info & BIT(2))
    rate = 0x0D;
   else
    rate = 0x0C;
  } else if (index < mcs_num_supp) {
   if (ht_info & BIT(1)) {
    if (ht_info & BIT(2))

     rate = mcs_rate[1][index];
    else

     rate = mcs_rate[0][index];
   } else {
    if (ht_info & BIT(2))

     rate = mcs_rate[3][index];
    else

     rate = mcs_rate[2][index];
   }
  } else
   rate = mwifiex_data_rates[0];
 } else {
  if (index >= MWIFIEX_SUPPORTED_RATES_EXT)
   index = 0;
  rate = mwifiex_data_rates[index];
 }
 return rate;
}
