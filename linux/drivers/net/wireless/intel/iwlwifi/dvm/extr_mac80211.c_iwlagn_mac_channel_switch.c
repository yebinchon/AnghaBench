
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {scalar_t__ flags; int channel; } ;
struct TYPE_7__ {int is_40mhz; int extension_chan_offset; } ;
struct TYPE_6__ {int channel; } ;
struct iwl_rxon_context {int vif; TYPE_3__ staging; TYPE_2__ ht; TYPE_1__ active; } ;
struct iwl_ht_config {int smps; } ;
struct iwl_priv {int mutex; scalar_t__ switch_channel; int status; TYPE_4__* lib; struct iwl_ht_config current_ht_config; struct iwl_rxon_context* contexts; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_conf {int smps_mode; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct TYPE_10__ {struct ieee80211_channel* chan; } ;
struct ieee80211_channel_switch {TYPE_5__ chandef; } ;
struct ieee80211_channel {scalar_t__ hw_value; int band; } ;
struct TYPE_9__ {scalar_t__ (* set_channel_switch ) (struct iwl_priv*,struct ieee80211_channel_switch*) ;} ;


 int IEEE80211_HT_PARAM_CHA_SEC_ABOVE ;
 int IEEE80211_HT_PARAM_CHA_SEC_BELOW ;
 int IEEE80211_HT_PARAM_CHA_SEC_NONE ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 size_t IWL_RXON_CTX_BSS ;




 int STATUS_CHANNEL_SWITCH_PENDING ;
 int STATUS_EXIT_PENDING ;
 int STATUS_SCANNING ;
 int cfg80211_get_chandef_type (TYPE_5__*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 int ieee80211_chswitch_done (int ,int) ;
 int iwl_is_associated_ctx (struct iwl_rxon_context*) ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_set_flags_for_band (struct iwl_priv*,struct iwl_rxon_context*,int ,int ) ;
 int iwl_set_rxon_channel (struct iwl_priv*,struct ieee80211_channel*,struct iwl_rxon_context*) ;
 int iwl_set_rxon_ht (struct iwl_priv*,struct iwl_ht_config*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ stub1 (struct iwl_priv*,struct ieee80211_channel_switch*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwlagn_mac_channel_switch(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_channel_switch *ch_switch)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct ieee80211_conf *conf = &hw->conf;
 struct ieee80211_channel *channel = ch_switch->chandef.chan;
 struct iwl_ht_config *ht_conf = &priv->current_ht_config;
 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
 u16 ch;

 IWL_DEBUG_MAC80211(priv, "enter\n");

 mutex_lock(&priv->mutex);

 if (iwl_is_rfkill(priv))
  goto out;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status) ||
     test_bit(STATUS_SCANNING, &priv->status) ||
     test_bit(STATUS_CHANNEL_SWITCH_PENDING, &priv->status))
  goto out;

 if (!iwl_is_associated_ctx(ctx))
  goto out;

 if (!priv->lib->set_channel_switch)
  goto out;

 ch = channel->hw_value;
 if (le16_to_cpu(ctx->active.channel) == ch)
  goto out;

 priv->current_ht_config.smps = conf->smps_mode;


 switch (cfg80211_get_chandef_type(&ch_switch->chandef)) {
 case 128:
 case 131:
  ctx->ht.is_40mhz = 0;
  ctx->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_NONE;
  break;
 case 130:
  ctx->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_BELOW;
  ctx->ht.is_40mhz = 1;
  break;
 case 129:
  ctx->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
  ctx->ht.is_40mhz = 1;
  break;
 }

 if ((le16_to_cpu(ctx->staging.channel) != ch))
  ctx->staging.flags = 0;

 iwl_set_rxon_channel(priv, channel, ctx);
 iwl_set_rxon_ht(priv, ht_conf);
 iwl_set_flags_for_band(priv, ctx, channel->band, ctx->vif);





 set_bit(STATUS_CHANNEL_SWITCH_PENDING, &priv->status);
 priv->switch_channel = cpu_to_le16(ch);
 if (priv->lib->set_channel_switch(priv, ch_switch)) {
  clear_bit(STATUS_CHANNEL_SWITCH_PENDING, &priv->status);
  priv->switch_channel = 0;
  ieee80211_chswitch_done(ctx->vif, 0);
 }

out:
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");
}
