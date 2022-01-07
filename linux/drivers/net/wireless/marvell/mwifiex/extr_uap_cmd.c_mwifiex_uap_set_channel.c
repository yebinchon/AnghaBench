
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_uap_bss_param {int band_cfg; int channel; } ;
struct cfg80211_chan_def {int width; TYPE_1__* chan; int center_freq1; } ;
struct mwifiex_private {TYPE_2__* adapter; struct cfg80211_chan_def bss_chandef; } ;
struct TYPE_4__ {int config_bands; int wiphy; } ;
struct TYPE_3__ {scalar_t__ band; int center_freq; } ;


 int BAND_A ;
 int BAND_AAC ;
 int BAND_AN ;
 int BAND_B ;
 int BAND_CONFIG_A ;
 int BAND_CONFIG_BG ;
 int BAND_G ;
 int BAND_GN ;
 int MWIFIEX_SEC_CHAN_ABOVE ;
 int MWIFIEX_SEC_CHAN_BELOW ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int WARN ;
 int ieee80211_frequency_to_channel (int ) ;
 int mwifiex_dbg (TYPE_2__*,int ,char*,int) ;
 int mwifiex_dnld_txpwr_table (struct mwifiex_private*) ;
 int mwifiex_get_sec_chan_offset (int ) ;
 int mwifiex_send_domain_info_cmd_fw (int ) ;

void mwifiex_uap_set_channel(struct mwifiex_private *priv,
        struct mwifiex_uap_bss_param *bss_cfg,
        struct cfg80211_chan_def chandef)
{
 u8 config_bands = 0, old_bands = priv->adapter->config_bands;

 priv->bss_chandef = chandef;

 bss_cfg->channel = ieee80211_frequency_to_channel(
           chandef.chan->center_freq);


 if (chandef.chan->band == NL80211_BAND_2GHZ) {
  bss_cfg->band_cfg = BAND_CONFIG_BG;
  config_bands = BAND_B | BAND_G;

  if (chandef.width > 132)
   config_bands |= BAND_GN;
 } else {
  bss_cfg->band_cfg = BAND_CONFIG_A;
  config_bands = BAND_A;

  if (chandef.width > 132)
   config_bands |= BAND_AN;

  if (chandef.width > 131)
   config_bands |= BAND_AAC;
 }

 switch (chandef.width) {
 case 130:
 case 135:
 case 132:
 case 133:
  break;
 case 131:
  if (chandef.center_freq1 < chandef.chan->center_freq)
   bss_cfg->band_cfg |= MWIFIEX_SEC_CHAN_BELOW;
  else
   bss_cfg->band_cfg |= MWIFIEX_SEC_CHAN_ABOVE;
  break;
 case 129:
 case 128:
 case 134:
  bss_cfg->band_cfg |=
      mwifiex_get_sec_chan_offset(bss_cfg->channel) << 4;
  break;
 default:
  mwifiex_dbg(priv->adapter,
       WARN, "Unknown channel width: %d\n",
       chandef.width);
  break;
 }

 priv->adapter->config_bands = config_bands;

 if (old_bands != config_bands) {
  mwifiex_send_domain_info_cmd_fw(priv->adapter->wiphy);
  mwifiex_dnld_txpwr_table(priv);
 }
}
