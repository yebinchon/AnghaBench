
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int dummy; } ;


 int BIT (int) ;
 int MWIFIEX_BW20_MCS_NUM ;
 int MWIFIEX_MAX_AC_RX_RATES ;
 int MWIFIEX_RATE_INDEX_MCS0 ;
 int MWIFIEX_RATE_INDEX_OFDM0 ;

u8 mwifiex_adjust_data_rate(struct mwifiex_private *priv,
       u8 rx_rate, u8 rate_info)
{
 u8 rate_index = 0;


 if ((rate_info & BIT(0)) && (rate_info & BIT(1)))
  rate_index = MWIFIEX_RATE_INDEX_MCS0 +
        MWIFIEX_BW20_MCS_NUM + rx_rate;
 else if (rate_info & BIT(0))
  rate_index = MWIFIEX_RATE_INDEX_MCS0 + rx_rate;
 else
  rate_index = (rx_rate > MWIFIEX_RATE_INDEX_OFDM0) ?
         rx_rate - 1 : rx_rate;

 if (rate_index >= MWIFIEX_MAX_AC_RX_RATES)
  rate_index = MWIFIEX_MAX_AC_RX_RATES - 1;

 return rate_index;
}
