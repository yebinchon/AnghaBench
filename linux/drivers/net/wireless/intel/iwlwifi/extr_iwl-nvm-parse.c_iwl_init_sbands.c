
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_trans {struct iwl_cfg* cfg; struct device* dev; } ;
struct iwl_nvm_data {scalar_t__ sku_cap_11ax_enable; scalar_t__ sku_cap_11ac_enable; struct ieee80211_supported_band* bands; } ;
struct iwl_cfg {int dummy; } ;
struct ieee80211_supported_band {size_t band; int vht_cap; int ht_cap; int n_bitrates; int * bitrates; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int disable_11ax; int disable_11ac; } ;


 int IWL_ERR_DEV (struct device*,char*,int,int) ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int N_RATES_24 ;
 int N_RATES_52 ;
 size_t RATES_24_OFFS ;
 size_t RATES_52_OFFS ;
 int * iwl_cfg80211_rates ;
 int iwl_init_channel_map (struct device*,struct iwl_cfg const*,struct iwl_nvm_data*,void const*,int ,int) ;
 int iwl_init_he_hw_capab (struct ieee80211_supported_band*,int ,int ) ;
 int iwl_init_ht_hw_capab (struct iwl_trans*,struct iwl_nvm_data*,int *,size_t,int ,int ) ;
 scalar_t__ iwl_init_sband_channels (struct iwl_nvm_data*,struct ieee80211_supported_band*,int,size_t) ;
 int iwl_init_vht_hw_capab (struct iwl_trans*,struct iwl_nvm_data*,int *,int ,int ) ;
 TYPE_1__ iwlwifi_mod_params ;

__attribute__((used)) static void iwl_init_sbands(struct iwl_trans *trans,
       struct iwl_nvm_data *data,
       const void *nvm_ch_flags, u8 tx_chains,
       u8 rx_chains, u32 sbands_flags, bool v4)
{
 struct device *dev = trans->dev;
 const struct iwl_cfg *cfg = trans->cfg;
 int n_channels;
 int n_used = 0;
 struct ieee80211_supported_band *sband;

 n_channels = iwl_init_channel_map(dev, cfg, data, nvm_ch_flags,
       sbands_flags, v4);
 sband = &data->bands[NL80211_BAND_2GHZ];
 sband->band = NL80211_BAND_2GHZ;
 sband->bitrates = &iwl_cfg80211_rates[RATES_24_OFFS];
 sband->n_bitrates = N_RATES_24;
 n_used += iwl_init_sband_channels(data, sband, n_channels,
       NL80211_BAND_2GHZ);
 iwl_init_ht_hw_capab(trans, data, &sband->ht_cap, NL80211_BAND_2GHZ,
        tx_chains, rx_chains);

 if (data->sku_cap_11ax_enable && !iwlwifi_mod_params.disable_11ax)
  iwl_init_he_hw_capab(sband, tx_chains, rx_chains);

 sband = &data->bands[NL80211_BAND_5GHZ];
 sband->band = NL80211_BAND_5GHZ;
 sband->bitrates = &iwl_cfg80211_rates[RATES_52_OFFS];
 sband->n_bitrates = N_RATES_52;
 n_used += iwl_init_sband_channels(data, sband, n_channels,
       NL80211_BAND_5GHZ);
 iwl_init_ht_hw_capab(trans, data, &sband->ht_cap, NL80211_BAND_5GHZ,
        tx_chains, rx_chains);
 if (data->sku_cap_11ac_enable && !iwlwifi_mod_params.disable_11ac)
  iwl_init_vht_hw_capab(trans, data, &sband->vht_cap,
          tx_chains, rx_chains);

 if (data->sku_cap_11ax_enable && !iwlwifi_mod_params.disable_11ax)
  iwl_init_he_hw_capab(sband, tx_chains, rx_chains);

 if (n_channels != n_used)
  IWL_ERR_DEV(dev, "NVM: used only %d of %d channels\n",
       n_used, n_channels);
}
