
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {struct mwifiex_histogram_data* hist_data; } ;
struct mwifiex_histogram_data {int num_samples; } ;
typedef int s8 ;


 scalar_t__ MWIFIEX_HIST_MAX_SAMPLES ;
 scalar_t__ atomic_read (int *) ;
 int mwifiex_hist_data_reset (struct mwifiex_private*) ;
 int mwifiex_hist_data_set (struct mwifiex_private*,int ,int ,int ) ;

void mwifiex_hist_data_add(struct mwifiex_private *priv,
      u8 rx_rate, s8 snr, s8 nflr)
{
 struct mwifiex_histogram_data *phist_data = priv->hist_data;

 if (atomic_read(&phist_data->num_samples) > MWIFIEX_HIST_MAX_SAMPLES)
  mwifiex_hist_data_reset(priv);
 mwifiex_hist_data_set(priv, rx_rate, snr, nflr);
}
