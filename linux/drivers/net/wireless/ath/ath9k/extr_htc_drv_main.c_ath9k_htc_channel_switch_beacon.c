
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ath9k_htc_priv {struct ieee80211_vif* csa_vif; } ;


 scalar_t__ WARN_ON (struct ieee80211_vif*) ;

__attribute__((used)) static void ath9k_htc_channel_switch_beacon(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct cfg80211_chan_def *chandef)
{
 struct ath9k_htc_priv *priv = hw->priv;


 if (WARN_ON(priv->csa_vif))
  return;

 priv->csa_vif = vif;
}
