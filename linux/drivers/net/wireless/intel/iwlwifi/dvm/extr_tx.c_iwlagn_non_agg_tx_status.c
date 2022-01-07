
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_station_priv {int pending_frames; scalar_t__ client; } ;
struct iwl_rxon_context {int vif; } ;
struct iwl_priv {int hw; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 scalar_t__ atomic_dec_return (int *) ;
 struct ieee80211_sta* ieee80211_find_sta (int ,int const*) ;
 int ieee80211_sta_block_awake (int ,struct ieee80211_sta*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iwlagn_non_agg_tx_status(struct iwl_priv *priv,
         struct iwl_rxon_context *ctx,
         const u8 *addr1)
{
 struct ieee80211_sta *sta;
 struct iwl_station_priv *sta_priv;

 rcu_read_lock();
 sta = ieee80211_find_sta(ctx->vif, addr1);
 if (sta) {
  sta_priv = (void *)sta->drv_priv;

  if (sta_priv->client &&
      atomic_dec_return(&sta_priv->pending_frames) == 0)
   ieee80211_sta_block_awake(priv->hw, sta, 0);
 }
 rcu_read_unlock();
}
