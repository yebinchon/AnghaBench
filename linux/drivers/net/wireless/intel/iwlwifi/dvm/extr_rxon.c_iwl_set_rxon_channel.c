
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int flags; int channel; } ;
struct iwl_rxon_context {TYPE_1__ staging; } ;
struct iwl_priv {int band; } ;
struct ieee80211_channel {int band; scalar_t__ hw_value; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IWL_DEBUG_INFO (struct iwl_priv*,char*,scalar_t__,int) ;
 int NL80211_BAND_5GHZ ;
 int RXON_FLG_BAND_24G_MSK ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

void iwl_set_rxon_channel(struct iwl_priv *priv, struct ieee80211_channel *ch,
    struct iwl_rxon_context *ctx)
{
 enum nl80211_band band = ch->band;
 u16 channel = ch->hw_value;

 if ((le16_to_cpu(ctx->staging.channel) == channel) &&
     (priv->band == band))
  return;

 ctx->staging.channel = cpu_to_le16(channel);
 if (band == NL80211_BAND_5GHZ)
  ctx->staging.flags &= ~RXON_FLG_BAND_24G_MSK;
 else
  ctx->staging.flags |= RXON_FLG_BAND_24G_MSK;

 priv->band = band;

 IWL_DEBUG_INFO(priv, "Staging channel set to %d [%d]\n", channel, band);

}
