
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mwifiex_private {struct mwifiex_histogram_data* hist_data; } ;
struct mwifiex_histogram_data {int * sig_str; int * noise_flr; int * snr; int * rx_rate; int num_samples; } ;
typedef int s8 ;


 int atomic_inc (int *) ;

void mwifiex_hist_data_set(struct mwifiex_private *priv, u8 rx_rate, s8 snr,
      s8 nflr)
{
 struct mwifiex_histogram_data *phist_data = priv->hist_data;
 s8 nf = -nflr;
 s8 rssi = snr - nflr;

 atomic_inc(&phist_data->num_samples);
 atomic_inc(&phist_data->rx_rate[rx_rate]);
 atomic_inc(&phist_data->snr[snr + 128]);
 atomic_inc(&phist_data->noise_flr[nf + 128]);
 atomic_inc(&phist_data->sig_str[rssi + 128]);
}
