
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {struct mwifiex_histogram_data* hist_data; } ;
struct mwifiex_histogram_data {int * sig_str; int * noise_flr; int * snr; int * rx_rate; int num_samples; } ;


 int MWIFIEX_MAX_AC_RX_RATES ;
 int MWIFIEX_MAX_NOISE_FLR ;
 int MWIFIEX_MAX_SIG_STRENGTH ;
 int MWIFIEX_MAX_SNR ;
 int atomic_set (int *,int ) ;

void mwifiex_hist_data_reset(struct mwifiex_private *priv)
{
 int ix;
 struct mwifiex_histogram_data *phist_data = priv->hist_data;

 atomic_set(&phist_data->num_samples, 0);
 for (ix = 0; ix < MWIFIEX_MAX_AC_RX_RATES; ix++)
  atomic_set(&phist_data->rx_rate[ix], 0);
 for (ix = 0; ix < MWIFIEX_MAX_SNR; ix++)
  atomic_set(&phist_data->snr[ix], 0);
 for (ix = 0; ix < MWIFIEX_MAX_NOISE_FLR; ix++)
  atomic_set(&phist_data->noise_flr[ix], 0);
 for (ix = 0; ix < MWIFIEX_MAX_SIG_STRENGTH; ix++)
  atomic_set(&phist_data->sig_str[ix], 0);
}
