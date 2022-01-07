
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct iwl_rxon_context {TYPE_2__ staging; } ;
struct iwl_priv {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_short_slot; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NL80211_BAND_5GHZ ;
 int RXON_FLG_AUTO_DETECT_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_CCK_MSK ;
 int RXON_FLG_SHORT_SLOT_MSK ;

void iwl_set_flags_for_band(struct iwl_priv *priv,
       struct iwl_rxon_context *ctx,
       enum nl80211_band band,
       struct ieee80211_vif *vif)
{
 if (band == NL80211_BAND_5GHZ) {
  ctx->staging.flags &=
      ~(RXON_FLG_BAND_24G_MSK | RXON_FLG_AUTO_DETECT_MSK
        | RXON_FLG_CCK_MSK);
  ctx->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
 } else {

  if (vif && vif->bss_conf.use_short_slot)
   ctx->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
  else
   ctx->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;

  ctx->staging.flags |= RXON_FLG_BAND_24G_MSK;
  ctx->staging.flags |= RXON_FLG_AUTO_DETECT_MSK;
  ctx->staging.flags &= ~RXON_FLG_CCK_MSK;
 }
}
