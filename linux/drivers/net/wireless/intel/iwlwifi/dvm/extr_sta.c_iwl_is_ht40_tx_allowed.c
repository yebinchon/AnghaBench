
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_40mhz; int enabled; } ;
struct iwl_rxon_context {TYPE_1__ ht; } ;
struct iwl_priv {scalar_t__ disable_ht40; } ;
struct ieee80211_sta {scalar_t__ bandwidth; } ;


 scalar_t__ IEEE80211_STA_RX_BW_40 ;

bool iwl_is_ht40_tx_allowed(struct iwl_priv *priv,
       struct iwl_rxon_context *ctx,
       struct ieee80211_sta *sta)
{
 if (!ctx->ht.enabled || !ctx->ht.is_40mhz)
  return 0;







 if (!sta)
  return 1;

 return sta->bandwidth >= IEEE80211_STA_RX_BW_40;
}
